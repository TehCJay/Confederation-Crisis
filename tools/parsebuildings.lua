--[[ json.lua

A compact pure-Lua JSON library.
The main functions are: json.stringify, json.parse.

## json.stringify:

This expects the following to be true of any tables being encoded:
 * They only have string or number keys. Number keys must be represented as
   strings in json; this is part of the json spec.
 * They are not recursive. Such a structure cannot be specified in json.

A Lua table is considered to be an array if and only if its set of keys is a
consecutive sequence of positive integers starting at 1. Arrays are encoded like
so: `[2, 3, false, "hi"]`. Any other type of Lua table is encoded as a json
object, encoded like so: `{"key1": 2, "key2": false}`.

Because the Lua nil value cannot be a key, and as a table value is considerd
equivalent to a missing key, there is no way to express the json "null" value in
a Lua table. The only way this will output "null" is if your entire input obj is
nil itself.

An empty Lua table, {}, could be considered either a json object or array -
it's an ambiguous edge case. We choose to treat this as an object as it is the
more general type.

To be clear, none of the above considerations is a limitation of this code.
Rather, it is what we get when we completely observe the json specification for
as arbitrary a Lua object as json is capable of expressing.

## json.parse:

This function parses json, with the exception that it does not pay attention to
\u-escaped unicode code points in strings.

It is difficult for Lua to return null as a value. In order to prevent the loss
of keys with a null value in a json string, this function uses the one-off
table value json.null (which is just an empty table) to indicate null values.
This way you can check if a value is null with the conditional
`val == json.null`.

If you have control over the data and are using Lua, I would recommend just
avoiding null values in your data to begin with.

--]]


local json = {}


-- Internal functions.

local function kind_of(obj)
  if type(obj) ~= 'table' then return type(obj) end
  local i = 1
  for _ in pairs(obj) do
    if obj[i] ~= nil then i = i + 1 else return 'table' end
  end
  if i == 1 then return 'table' else return 'array' end
end

local function escape_str(s)
  local in_char  = {'\\', '"', '/', '\b', '\f', '\n', '\r', '\t'}
  local out_char = {'\\', '"', '/',  'b',  'f',  'n',  'r',  't'}
  for i, c in ipairs(in_char) do
    s = s:gsub(c, '\\' .. out_char[i])
  end
  return s
end

-- Returns pos, did_find; there are two cases:
-- 1. Delimiter found: pos = pos after leading space + delim; did_find = true.
-- 2. Delimiter not found: pos = pos after leading space;     did_find = false.
-- This throws an error if err_if_missing is true and the delim is not found.
local function skip_delim(str, pos, delim, err_if_missing)
  pos = pos + #str:match('^%s*', pos)
  if str:sub(pos, pos) ~= delim then
    if err_if_missing then
      error('Expected ' .. delim .. ' near position ' .. pos)
    end
    return pos, false
  end
  return pos + 1, true
end

-- Expects the given pos to be the first character after the opening quote.
-- Returns val, pos; the returned pos is after the closing quote character.
local function parse_str_val(str, pos, val)
  val = val or ''
  local early_end_error = 'End of input found while parsing string.'
  if pos > #str then error(early_end_error) end
  local c = str:sub(pos, pos)
  if c == '"'  then return val, pos + 1 end
  if c ~= '\\' then return parse_str_val(str, pos + 1, val .. c) end
  -- We must have a \ character.
  local esc_map = {b = '\b', f = '\f', n = '\n', r = '\r', t = '\t'}
  local nextc = str:sub(pos + 1, pos + 1)
  if not nextc then error(early_end_error) end
  return parse_str_val(str, pos + 2, val .. (esc_map[nextc] or nextc))
end

-- Returns val, pos; the returned pos is after the number's final character.
local function parse_num_val(str, pos)
  local num_str = str:match('^-?%d+%.?%d*[eE]?[+-]?%d*', pos)
  local val = tonumber(num_str)
  if not val then error('Error parsing number at position ' .. pos .. '.') end
  return val, pos + #num_str
end


-- Public values and functions.

function json.stringify(obj, as_key)
  local s = {}  -- We'll build the string as an array of strings to be concatenated.
  local kind = kind_of(obj)  -- This is 'array' if it's an array or type(obj) otherwise.
  if kind == 'array' then
    if as_key then error('Can\'t encode array as key.') end
    s[#s + 1] = '['
    for i, val in ipairs(obj) do
      if i > 1 then s[#s + 1] = ', ' end
      s[#s + 1] = json.stringify(val)
    end
    s[#s + 1] = ']'
  elseif kind == 'table' then
    if as_key then error('Can\'t encode table as key.') end
    s[#s + 1] = '{'
    for k, v in pairs(obj) do
      if #s > 1 then s[#s + 1] = ', ' end
      s[#s + 1] = json.stringify(k, true)
      s[#s + 1] = ':'
      s[#s + 1] = json.stringify(v)
    end
    s[#s + 1] = '}'
  elseif kind == 'string' then
    return '"' .. escape_str(obj) .. '"'
  elseif kind == 'number' then
    if as_key then return '"' .. tostring(obj) .. '"' end
    return tostring(obj)
  elseif kind == 'boolean' then
    return tostring(obj)
  elseif kind == 'nil' then
    return 'null'
  else
    error('Unjsonifiable type: ' .. kind .. '.')
  end
  return table.concat(s)
end

json.null = {}  -- This is a one-off table to represent the null value.

function json.parse(str, pos, end_delim)
  pos = pos or 1
  if pos > #str then error('Reached unexpected end of input.') end
  local pos = pos + #str:match('^%s*', pos)  -- Skip whitespace.
  local first = str:sub(pos, pos)
  if first == '{' then  -- Parse an object.
    local obj, key, delim_found = {}, true, true
    pos = pos + 1
    while true do
      key, pos = json.parse(str, pos, '}')
      if key == nil then return obj, pos end
      if not delim_found then error('Comma missing between object items.') end
      pos = skip_delim(str, pos, ':', true)  -- true -> error if missing.
      obj[key], pos = json.parse(str, pos)
      pos, delim_found = skip_delim(str, pos, ',')
    end
  elseif first == '[' then  -- Parse an array.
    local arr, val, delim_found = {}, true, true
    pos = pos + 1
    while true do
      val, pos = json.parse(str, pos, ']')
      if val == nil then return arr, pos end
      if not delim_found then error('Comma missing between array items.') end
      arr[#arr + 1] = val
      pos, delim_found = skip_delim(str, pos, ',')
    end
  elseif first == '"' then  -- Parse a string.
    return parse_str_val(str, pos + 1)
  elseif first == '-' or first:match('%d') then  -- Parse a number.
    return parse_num_val(str, pos)
  elseif first == end_delim then  -- End of an object or array.
    return nil, pos + 1
  else  -- Parse true, false, or null.
    local literals = {['true'] = true, ['false'] = false, ['null'] = json.null}
    for lit_str, lit_val in pairs(literals) do
      local lit_end = pos + #lit_str - 1
      if str:sub(pos, lit_end) == lit_str then return lit_val, lit_end + 1 end
    end
    local pos_info_str = 'position ' .. pos .. ': ' .. str:sub(pos, pos + 10)
    error('Invalid json syntax starting at ' .. pos_info_str)
  end
end

function readAll(file)
    local f = assert(io.open(file, "rb"))
    local content = f:read("*all")
    f:close()
    return content
end

local jsonString = readAll("staticmodifiers.json")
local parsedJson = json.parse(jsonString)

local baseValues = {castle = {}, city = {}, temple = {}}
for k, v in pairs(parsedJson.castle) do
    baseValues.castle[k] = v
    print(k, v, baseValues.castle[k])
end
for k, v in pairs(parsedJson.city) do
    baseValues.city[k] = v
end
for k, v in pairs(parsedJson.temple) do
    baseValues.temple[k] = v
end
baseValues.castle.levy_size = (baseValues.castle.levy_size or 0) + 1
baseValues.city.levy_size = (baseValues.city.levy_size or 0) + 1
baseValues.temple.levy_size = (baseValues.temple.levy_size or 0) + 1
baseValues.castle.garrison_size = (baseValues.castle.garrison_size or 0) + 1
baseValues.city.garrison_size = (baseValues.city.garrison_size or 0) + 1
baseValues.temple.garrison_size = (baseValues.temple.garrison_size or 0) + 1

local finalParse = {}

local jsonString = readAll("jsonfiedcastle.json")
local parsedJson = json.parse(jsonString)
finalParse.castle = parsedJson.castle

local jsonString = readAll("jsonfiedcity.json")
local parsedJson = json.parse(jsonString)
finalParse.city = parsedJson.city

local jsonString = readAll("jsonfiedtemple.json")
local parsedJson = json.parse(jsonString)
finalParse.temple = parsedJson.temple

local planetTypeStats = {
    environment =   {1110, 471, 168, 62, 2},
    energy =        {1110, 917, 509, 254, 33},
    materials =     {1110, 914, 480, 213, 25}
}

local targets = {
    castle = {gunships = 40, laserships = 40, missileships = 70, destroyers = 50, battleships = 50, troopTransports = 250},
    city = {gunships = 70, laserships = 20, missileships = 20, destroyers = 15, battleships = 1, troopTransports = 300},
    temple = {gunships = 15, laserships = 60, missileships = 15, destroyers = 30, battleships = 1, troopTransports = 200}
}

finalParse.castle.ca_environment_0 = { maxBuilt = planetTypeStats.environment[1] }
finalParse.temple.tp_environment_0 = { maxBuilt = planetTypeStats.environment[1] }
finalParse.city.ct_environment_0 =   { maxBuilt = planetTypeStats.environment[1] }

finalParse.castle.ca_environment_1 = { maxBuilt = planetTypeStats.environment[2] }
finalParse.temple.tp_environment_1 = { maxBuilt = planetTypeStats.environment[2] }
finalParse.city.ct_environment_1 =   { maxBuilt = planetTypeStats.environment[2] }

finalParse.castle.ca_environment_2 = { maxBuilt = planetTypeStats.environment[3] }
finalParse.temple.tp_environment_2 = { maxBuilt = planetTypeStats.environment[3] }
finalParse.city.ct_environment_2 =   { maxBuilt = planetTypeStats.environment[3] }

finalParse.castle.ca_environment_3 = { maxBuilt = planetTypeStats.environment[4] }
finalParse.temple.tp_environment_3 = { maxBuilt = planetTypeStats.environment[4] }
finalParse.city.ct_environment_3 =   { maxBuilt = planetTypeStats.environment[4] }

finalParse.castle.ca_environment_4 = { maxBuilt = planetTypeStats.environment[5] }
finalParse.temple.tp_environment_4 = { maxBuilt = planetTypeStats.environment[5] }
finalParse.city.ct_environment_4 =   { maxBuilt = planetTypeStats.environment[5] }

finalParse.castle.ca_energy_0 = { maxBuilt = planetTypeStats.energy[1] }
finalParse.temple.tp_energy_0 = { maxBuilt = planetTypeStats.energy[1] }
finalParse.city.ct_energy_0 =   { maxBuilt = planetTypeStats.energy[1] }

finalParse.castle.ca_energy_1 = { maxBuilt = planetTypeStats.energy[2] }
finalParse.temple.tp_energy_1 = { maxBuilt = planetTypeStats.energy[2] }
finalParse.city.ct_energy_1 =   { maxBuilt = planetTypeStats.energy[2] }

finalParse.castle.ca_energy_2 = { maxBuilt = planetTypeStats.energy[3] }
finalParse.temple.tp_energy_2 = { maxBuilt = planetTypeStats.energy[3] }
finalParse.city.ct_energy_2 =   { maxBuilt = planetTypeStats.energy[3] }

finalParse.castle.ca_energy_3 = { maxBuilt = planetTypeStats.energy[4] }
finalParse.temple.tp_energy_3 = { maxBuilt = planetTypeStats.energy[4] }
finalParse.city.ct_energy_3 =   { maxBuilt = planetTypeStats.energy[4] }

finalParse.castle.ca_energy_4 = { maxBuilt = planetTypeStats.energy[5] }
finalParse.temple.tp_energy_4 = { maxBuilt = planetTypeStats.energy[5] }
finalParse.city.ct_energy_4 =   { maxBuilt = planetTypeStats.energy[5] }

finalParse.castle.ca_materials_0 = { maxBuilt = planetTypeStats.materials[1] }
finalParse.temple.tp_materials_0 = { maxBuilt = planetTypeStats.materials[1] }
finalParse.city.ct_materials_0 =   { maxBuilt = planetTypeStats.materials[1] }

finalParse.castle.ca_materials_1 = { maxBuilt = planetTypeStats.materials[2] }
finalParse.temple.tp_materials_1 = { maxBuilt = planetTypeStats.materials[2] }
finalParse.city.ct_materials_1 =   { maxBuilt = planetTypeStats.materials[2] }

finalParse.castle.ca_materials_2 = { maxBuilt = planetTypeStats.materials[3] }
finalParse.temple.tp_materials_2 = { maxBuilt = planetTypeStats.materials[3] }
finalParse.city.ct_materials_2 =   { maxBuilt = planetTypeStats.materials[3] }

finalParse.castle.ca_materials_3 = { maxBuilt = planetTypeStats.materials[4] }
finalParse.temple.tp_materials_3 = { maxBuilt = planetTypeStats.materials[4] }
finalParse.city.ct_materials_3 =   { maxBuilt = planetTypeStats.materials[4] }

finalParse.castle.ca_materials_4 = { maxBuilt = planetTypeStats.materials[5] }
finalParse.temple.tp_materials_4 = { maxBuilt = planetTypeStats.materials[5] }
finalParse.city.ct_materials_4 =   { maxBuilt = planetTypeStats.materials[5] }

-- here we parse types of holdings
for k, v in pairs(finalParse) do
    print(" ")
    print(k, v)
    print(" ")

    -- next we find all building chains
    local buildingChains = {}
    for k1, v1 in pairs(v) do
        if not v1.upgrades_from then
            buildingChains[k1] = {k1}
        end

        --hack so we don't have to process the "potential" of this one
        if k1 == "ct_government_citadel_q_1" then
            v[k1].maxBuilt = 30 --some rough estimate of how many independent rulers there will be.
        end
    end

    -- we also tag buildings with how frequently they are built
    local anotherPassNeeded = true
    local extraPasses = 10
    while anotherPassNeeded or extraPasses > 0 do
        if not anotherPassNeeded then
            extraPasses = extraPasses - 1
        else
            anotherPassNeeded = false
        end
        for k1, v1 in pairs(v) do
            if not v[k1].maxBuilt then
                v[k1].maxBuilt = planetTypeStats.environment[1]
            end

            if v1.upgrades_from then
                if v[v1.upgrades_from].maxBuilt then
                    if v[v1.upgrades_from].maxBuilt < v[k1].maxBuilt then
                        v[k1].maxBuilt = v[v1.upgrades_from].maxBuilt
                        print(k1 .. " limited to " .. v[k1].maxBuilt .. " because it builds from " .. v1.upgrades_from)
                    end
                else
                    anotherPassNeeded = true
                end
            end

            if v1.prerequisites then
                for k2, v2 in pairs(v1.prerequisites) do
                    if v[v2].maxBuilt then
                        if v[v2].maxBuilt < v[k1].maxBuilt then
                            v[k1].maxBuilt = v[v2].maxBuilt
                            print(k1 .. " limited to " .. v[k1].maxBuilt .. " because it needs " .. v2)
                        end
                    else
                        anotherPassNeeded = true
                    end
                end
            end

            if v1.trigger then
                local buildingsNeeded = {}
                for trigKey, trigValue in pairs(v1.trigger) do
                    if trigKey == "FROMFROM" then
                        --we are now in the holding scope, do not ask me why
                        for holdingKey, holdingValue in pairs(trigValue) do
                            if holdingKey == "has_building" and type(holdingValue) == "string" then
                                table.insert(buildingsNeeded, holdingValue)
                            elseif holdingKey == "has_building" then
                                for _, has_buildingValue in pairs(holdingValue) do
                                    table.insert(buildingsNeeded, has_buildingValue)
                                end
                            elseif holdingKey == "OR" then
                                local maybeNeeded = {}
                                local biggest = 0
                                local buildingNeeded = "none"
                                for orKey, orValue in pairs(holdingValue) do
                                    if orKey == "has_building" and type(orValue) == "string" then
                                        table.insert(maybeNeeded, orValue)
                                    elseif orKey == "has_building" then
                                        for _, has_buildingValue in pairs(orValue) do
                                            table.insert(maybeNeeded, has_buildingValue)
                                        end
                                    else
                                        print("do not know how to process", holdingKey, holdingValue)
                                    end
                                end

                                for _, maybeValue in pairs(maybeNeeded) do
                                    if v[maybeValue].maxBuilt then
                                        if v[maybeValue].maxBuilt > biggest then
                                            biggest = v[maybeValue].maxBuilt
                                            buildingNeeded = maybeValue
                                        end
                                    else
                                        anotherPassNeeded = true
                                    end
                                end

                                if not anotherPassNeeded then
                                    if(v[buildingNeeded].maxBuilt < v[k1].maxBuilt) then
                                        table.insert(buildingsNeeded, buildingNeeded)
                                        --print("limiting factor is " .. buildingNeeded)
                                    end
                                end
                            else
                                print("do not know how to process", holdingKey, holdingValue)
                            end
                        end
                    elseif string.find(trigKey, "TECH_") or (trigKey == "always" and trigValue == true) then
                        --we ignore these
                    else
                        print("do not know how to process", trigKey, trigValue)
                    end
                end

                for _, buildingNeeded in pairs(buildingsNeeded) do
                    if v[buildingNeeded].maxBuilt then
                        if v[buildingNeeded].maxBuilt < v[k1].maxBuilt then
                            v[k1].maxBuilt = v[buildingNeeded].maxBuilt
                            print(k1 .. " limited to " .. v[k1].maxBuilt .. " because it needs " .. buildingNeeded)
                        end
                    else
                        anotherPassNeeded = true
                    end
                end
            end
        end
    end

    local buildingsStillOrphan = true
    while buildingsStillOrphan do
        buildingsStillOrphan = false
        for k1, v1 in pairs(v) do
            if v1.upgrades_from and not v1.not_orphan then
                local foundPlace = false
                for k2, v2 in pairs(buildingChains) do
                    for k3, v3 in pairs(v2) do
                        if v1.upgrades_from == v3 then
                            table.insert(buildingChains[k2], k1)
                            v1.not_orphan = true
                            foundPlace = true
                            if v1.maxBuilt > v[v3].maxBuilt then
                                print("that is weird!")
                                print(k1, v3)
                                print("we can build " .. v1.maxBuilt .. " but parent is limited to " .. v[v3].maxBuilt)
                                v[k1].maxBuilt = v[v3].maxBuilt
                            end
                        end
                    end

                    --[[if not foundplace and v1.upgrades_from == k2 then
                        table.insert(buildingChains[k2], k1)
                        v1.not_orphan = true
                        foundPlace = true
                    end]]
                end
                if not foundPlace then
                    buildingsStillOrphan = true
                end
            end
        end
    end

    --strip all data that is useless to our analysis
    local dataToAnalyse = {}
    for k1, v1 in pairs(v) do
        for k2, v2 in pairs(v1) do
            if type(v2) == "table" or type(v2) == "string" or type(v2) == "boolean" then
                v[k1][k2] = nil
            elseif k2 == "ai_creation_factor" or k2 == "extra_tech_building_start" then
                v[k1][k2] = nil
            elseif k2 == "maxBuilt" then
                --do nothing
                --print(k1, v1, k2, v2)
            elseif dataToAnalyse[k2] then
                --print(k1, v1.maxBuilt/planetTypeStats.environment[1])
                dataToAnalyse[k2] = dataToAnalyse[k2] + v2*(v1.maxBuilt/planetTypeStats.environment[1])
                --dataToAnalyse[k2 .. "_fullValue"] = dataToAnalyse[k2 .. "_fullValue"] + v2
            else
                dataToAnalyse[k2] = v2*(v1.maxBuilt/planetTypeStats.environment[1])
                --dataToAnalyse[k2 .. "_fullValue"] = v2
            end
        end
    end

    local chainData = {}
    for k1, v1 in pairs(buildingChains) do
        chainData[k1] = {}
        print(" ")
        print("chain " .. k1)
        for k2, v2 in pairs(v1) do
            chainData[k1].effectiveLevel = (chainData[k1].effectiveLevel or 0) + v[v2].maxBuilt/planetTypeStats.environment[1]
            --chainData[k1][]
            --print("    " .. v2, v[v2])
            for k3, v3 in pairs(v[v2]) do
                if not chainData[k1][k3] then
                    chainData[k1][k3] = v3
                else
                    chainData[k1][k3] = chainData[k1][k3] + v3
                end
            end
        end
        local totalShips = (chainData[k1].light_infantry or 0)+(chainData[k1].heavy_infantry or 0)+(chainData[k1].pikemen or 0)+(chainData[k1].light_cavalry or 0)+(chainData[k1].knights or 0)+(chainData[k1].archers or 0)
        if totalShips > 0 then
            chainData[k1].light_infantry_cost = ((chainData[k1].light_infantry or 0)/totalShips)*chainData[k1].gold_cost
            chainData[k1].heavy_infantry_cost = ((chainData[k1].heavy_infantry or 0)/totalShips)*chainData[k1].gold_cost
            chainData[k1].pikemen_cost = ((chainData[k1].pikemen or 0)/totalShips)*chainData[k1].gold_cost
            chainData[k1].light_cavalry_cost = ((chainData[k1].light_cavalry or 0)/totalShips)*chainData[k1].gold_cost
            chainData[k1].knights_cost = ((chainData[k1].knights or 0)/totalShips)*chainData[k1].gold_cost
            chainData[k1].archers_cost = ((chainData[k1].archers or 0)/totalShips)*chainData[k1].gold_cost
        end
        for k2, v2 in pairs(chainData[k1]) do
            print(k2, v2)
        end
        print("building chain effective max level " .. chainData[k1].effectiveLevel .. " and max level is " .. #buildingChains[k1])
    end

    for k1, v1 in pairs(v) do
        local totalShips = (v1.light_infantry or 0)+(v1.heavy_infantry or 0)+(v1.pikemen or 0)+(v1.light_cavalry or 0)+(v1.knights or 0)+(v1.archers or 0)
        if totalShips > 0 then
            dataToAnalyse.light_infantry_cost = (dataToAnalyse.light_infantry_cost or 0) + ((v1.light_infantry or 0)/totalShips)*v1.gold_cost
            dataToAnalyse.heavy_infantry_cost = (dataToAnalyse.heavy_infantry_cost or 0) + ((v1.heavy_infantry or 0)/totalShips)*v1.gold_cost
            dataToAnalyse.pikemen_cost = (dataToAnalyse.pikemen_cost or 0) + ((v1.pikemen or 0)/totalShips)*v1.gold_cost
            dataToAnalyse.light_cavalry_cost = (dataToAnalyse.light_cavalry_cost or 0) + ((v1.light_cavalry or 0)/totalShips)*v1.gold_cost
            dataToAnalyse.knights_cost = (dataToAnalyse.knights_cost or 0) + ((v1.knights or 0)/totalShips)*v1.gold_cost
            dataToAnalyse.archers_cost = (dataToAnalyse.archers_cost or 0) + ((v1.archers or 0)/totalShips)*v1.gold_cost
        end
    end

    if dataToAnalyse.light_infantry then
        dataToAnalyse.gunshipPrice = dataToAnalyse.light_infantry_cost/dataToAnalyse.light_infantry
    else
        dataToAnalyse.gunshipPrice = 0
    end
    if dataToAnalyse.heavy_infantry then
        dataToAnalyse.lasershipPrice = dataToAnalyse.heavy_infantry_cost/dataToAnalyse.heavy_infantry
    else
        dataToAnalyse.lasershipPrice = 0
    end
    if dataToAnalyse.pikemen then
        dataToAnalyse.missileshipPrice = dataToAnalyse.pikemen_cost/dataToAnalyse.pikemen
    else
        dataToAnalyse.missileshipPrice = 0
    end
    if dataToAnalyse.light_cavalry then
        dataToAnalyse.destroyerPrice = dataToAnalyse.light_cavalry_cost/dataToAnalyse.light_cavalry
    else
        dataToAnalyse.destroyerPrice = 0
    end
    if dataToAnalyse.knights then
        dataToAnalyse.battleshipPrice = dataToAnalyse.knights_cost/dataToAnalyse.knights
    else
        dataToAnalyse.battleshipPrice = 0
    end
    if dataToAnalyse.archers then
        dataToAnalyse.troopTransportPrice = dataToAnalyse.archers_cost/dataToAnalyse.archers
    else
        dataToAnalyse.troopTransportPrice = 0
    end

    for k1, v1 in pairs(baseValues[k]) do
        if k1 ~= "build_time_modifier" and k1 ~= "build_cost_modifier" then
            dataToAnalyse[k1] = (dataToAnalyse[k1] or 0) + (v1 or 0)
        end
    end

    print(" ")
    print("Analysis of Totals for " .. k)
    print("years to build " .. dataToAnalyse.build_time/356)
    print("years to repay cost " .. dataToAnalyse.gold_cost/dataToAnalyse.tax_income)
    print("tax income " .. dataToAnalyse.tax_income)
    if dataToAnalyse.supply_limit then
        print("supply generated " .. dataToAnalyse.supply_limit*1000)
    else
        print("SUPPLY BUILDINGS NEEDED!")
    end
    print("retinue generated " .. (dataToAnalyse.retinuesize or 0))
    print("levy and garrison size " .. dataToAnalyse.levy_size .. " " .. dataToAnalyse.garrison_size)
    print("reinforcement " .. dataToAnalyse.levy_reinforce_rate)

    local gunships = dataToAnalyse.light_infantry
    local laserships = dataToAnalyse.heavy_infantry
    local missileships = dataToAnalyse.pikemen
    local destroyers = dataToAnalyse.light_cavalry
    local battleships = dataToAnalyse.knights
    local troopTransports = dataToAnalyse.archers

    --dataToAnalyse.

    print("gunships, laserships, missileships, destroyers, battleships, troopTransports, total")
    print("base value")
    print(gunships, laserships, missileships, destroyers, battleships, troopTransports, gunships+laserships+missileships+destroyers+battleships+troopTransports)
    print("garrison")
    print(gunships*dataToAnalyse.garrison_size, laserships*dataToAnalyse.garrison_size, missileships*dataToAnalyse.garrison_size, destroyers*dataToAnalyse.garrison_size, battleships*dataToAnalyse.garrison_size, troopTransports*dataToAnalyse.garrison_size, gunships*dataToAnalyse.garrison_size+laserships*dataToAnalyse.garrison_size+missileships*dataToAnalyse.garrison_size+destroyers*dataToAnalyse.garrison_size+battleships*dataToAnalyse.garrison_size+troopTransports*dataToAnalyse.garrison_size)
    print("levy")
    print(gunships*dataToAnalyse.levy_size, laserships*dataToAnalyse.levy_size, missileships*dataToAnalyse.levy_size, destroyers*dataToAnalyse.levy_size, battleships*dataToAnalyse.levy_size, troopTransports*dataToAnalyse.levy_size, gunships*dataToAnalyse.levy_size+laserships*dataToAnalyse.levy_size+missileships*dataToAnalyse.levy_size+destroyers*dataToAnalyse.levy_size+battleships*dataToAnalyse.levy_size+troopTransports*dataToAnalyse.levy_size)
    print("cost per ship")
    print(dataToAnalyse.gunshipPrice, dataToAnalyse.lasershipPrice, dataToAnalyse.missileshipPrice, dataToAnalyse.destroyerPrice, dataToAnalyse.battleshipPrice, dataToAnalyse.troopTransportPrice)
    print("levy over target")
    print(gunships*dataToAnalyse.levy_size-targets[k].gunships, laserships*dataToAnalyse.levy_size-targets[k].laserships, missileships*dataToAnalyse.levy_size-targets[k].missileships, destroyers*dataToAnalyse.levy_size-targets[k].destroyers, battleships*dataToAnalyse.levy_size-targets[k].battleships, troopTransports*dataToAnalyse.levy_size-targets[k].troopTransports)

    print(" ")

    for k1, v1 in pairs(dataToAnalyse) do
        print(k1, v1)
    end
end

