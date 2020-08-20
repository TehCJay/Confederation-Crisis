local gameUnitName =
{
    gunships = "light_infantry",
    laserships = "heavy_infantry",
    missileships = "pikemen",
    destroyers = "light_cavalry",
    battleships = "knights",
    trooptransports = "archers"
}

local tacGenData = {
    skirmish = {
        weaponPowerRaw = {
            gunships = {
                kinetic = 1,
                laser = 0,
                missile = 0,
                boarding = 0
            },
            laserships = {
                kinetic = 0,
                laser = 1,
                missile = 0,
                boarding = 0
            },
            missileships = {
                kinetic = 0,
                laser = 0,
                missile = 1,
                boarding = 0
            },
            destroyers = {
                kinetic = 0.1,
                laser = 0.4,
                missile = 0.5,
                boarding = 0
            },
            battleships = {
                kinetic = 0.1,
                laser = 0.7,
                missile = 0.2,
                boarding = 0
            },
            trooptransports = {
                kinetic = 0,
                laser = 0,
                missile = 0,
                boarding = 1
            }
        },

        defensePowerRaw = {
            gunships = {
                radiator = 1,
                spin = 2,
                pd = 5,
                dodge = 5,
                armor = 0
            },
            laserships = {
                radiator = 10,
                spin = 1,
                pd = 5,
                dodge = 2,
                armor = 1
            },
            missileships = {
                radiator = 1,
                spin = 1,
                pd = 2,
                dodge = 3,
                armor = 2
            },
            destroyers = {
                radiator = 2,
                spin = 1,
                pd = 2,
                dodge = 1,
                armor = 2
            },
            battleships = {
                radiator = 7,
                spin = 2,
                pd = 5,
                dodge = 1,
                armor = 3
            },
            trooptransports = {
                radiator = 0,
                spin = 2,
                pd = 5,
                dodge = 0,
                armor = 10
            }
        },

        -- Here is the combat effects for each tactical decision, not the "trigger" for them.
        tacticalFeatures = {
            --the base weapon features should not be mixed
            balanced = {
            },
            laser = {
                kinetic = 0,
                laser = 2,
                missile = 0,
                boarding = 0,
                radiator = 0.5,
                pd = 1.1
            },
            missile = {
                kinetic = 1,
                laser = 0,
                missile = 2,
                boarding = 0,
                radiator = 4
            },
            defensive = {
                kinetic = 0.5,
                laser = 0.5,
                missile = 0.5,
                boarding = 0.5,
                radiator = 2,
                spin = 2,
                pd = 2,
                dodge = 2
            },

            --the base movement features should not be mixed
            direct = {
                kinetic = 1.1,
                laser = 1.1,
                missile = 1.1,
                boarding = 1.1,
                spin = 0.9,
                pd = 0.9,
                dodge = 0.7
            },
            weave = {
                kinetic = 0.9,
                laser = 0.9,
                missile = 0.9,
                boarding = 0.9,
                dodge = 3,
                pd = 1.3
            },

            --special modifier for tactics that are moving AWAY from combat
            retrograde = {
                missile = 0.7,
                radiator = 1.1,
                spin = 1.1,
                pd = 1.2,
                dodge = 1.3,
                armor = 1.3
            }
        },

        -- Here are the special properties and triggers for each tactical decision.
        tacticalWeaponChoices = {
            balanced = {
                encouraged_trait = {"weapon_master"}
            },
            laser = {
                encouraged_trait = {"laser_master"}
            },
            missile = {
                encouraged_trait = {"missile_master", "kinetic_master"},
                encouraged_religion = {"cyberneticist", "machine_cultist", "hiver"}
            },
            defensive = {
                encouraged_trait = {"kinetic_master"}
            }
        },

        tacticalMovementChoices = {
            direct = {
                duration = 15,
                target = "melee",
                encouraged_religion = {"neo_feudal"},
                encouraged_trait = { "pursuit_specialist", "unyielding_leader", "shock_leader", "aggressive_leader", "omnicidal_maniac" }
            },
            weave = {
                duration = 25,
                target = "melee",
                discouraged_trait = { "short_range_specialist", "orbital_combat_specialist" },
                encouraged_trait = { "desert_terrain_leader", "narrow_flank_leader" }
            }
        },

        tacticalExtraVariations = {
            retrograde = {
                duration = 5,
                target = "skirmish",
                forbidden_trait = {"pursuit_specialist", "unyielding_leader", "omnicidal_maniac"},
                encouraged_trait = {"long_range_combat_specialist", "desert_terrain_leader", "trickster", "organizer", "defensive_leader" },
                discouraged_trait = {"short_range_specialist", "orbital_combat_specialist"},
                discouraged_religion = {"neo_feudal"}
            }
        },

        tactics = {},
        weaponPower = {},
        defensePower = {},
        fromTo = {},
    },
    melee = {
        weaponPowerRaw = {
            gunships = {
                kinetic = 1,
                laser = 0.1,
                missile = 0,
                boarding = 0
            },
            laserships = {
                kinetic = 0,
                laser = 1,
                missile = 0,
                boarding = 0
            },
            missileships = {
                kinetic = 0.05,
                laser = 0.05,
                missile = 1,
                boarding = 0
            },
            destroyers = {
                kinetic = 0.4,
                laser = 0.4,
                missile = 0.5,
                boarding = 0
            },
            battleships = {
                kinetic = 0.4,
                laser = 0.5,
                missile = 0.3,
                boarding = 0
            },
            trooptransports = {
                kinetic = 0.05,
                laser = 0.05,
                missile = 0,
                boarding = 1
            }
        },

        defensePowerRaw = {
            gunships = {
                radiator = 1,
                spin = 2,
                pd = 5,
                dodge = 5,
                armor = 0
            },
            laserships = {
                radiator = 10,
                spin = 1,
                pd = 5,
                dodge = 2,
                armor = 1
            },
            missileships = {
                radiator = 1,
                spin = 1,
                pd = 2,
                dodge = 3,
                armor = 2
            },
            destroyers = {
                radiator = 2,
                spin = 1,
                pd = 2,
                dodge = 1,
                armor = 2
            },
            battleships = {
                radiator = 7,
                spin = 2,
                pd = 5,
                dodge = 1,
                armor = 3
            },
            trooptransports = {
                radiator = 0,
                spin = 2,
                pd = 5,
                dodge = 0,
                armor = 10
            }
        },

        -- Here is the combat effects for each tactical decision, not the "trigger" for them.
        tacticalFeatures = {
            --the base weapon features should not be mixed
            balanced = {
                boarding = 0.7,
                armor = 1.1
            },
            laser = {
                kinetic = 0,
                laser = 2,
                missile = 0,
                boarding = 0.5,
                radiator = 0.5,
                pd = 1.2
            },
            kinetic = {
                kinetic = 2,
                laser = 0,
                missile = 2,
                boarding = 0.5,
                radiator = 4,
                dodge = 1.1
            },
            defensive = {
                kinetic = 0.5,
                laser = 0.5,
                missile = 0.5,
                boarding = 1,
                radiator = 2,
                spin = 2,
                pd = 2,
                dodge = 2
            },
            boarding = {
                kinetic = 0.4,
                laser = 0.4,
                missile = 0.4,
                boarding = 3,
                radiator = 0.8,
                spin = 0.8,
                pd = 0.8
            },

            --the base movement features should not be mixed
            column = {
                kinetic = 0.2,
                laser = 0.2,
                missile = 0.2,
                boarding = 0.2,
                spin = 1.5,
                pd = 1.8,
                dodge = 0.8,
                radiator = 1.2,
                armor = 3
            },
            sphere = {
                kinetic = 0.7,
                laser = 0.9,
                missile = 1,
                boarding = 0.9,
                spin = 1.1,
                pd = 1.1,
                dodge = 1.2,
                radiator = 1.1,
                armor = 1.3
            },
            cone = {
                kinetic = 2,
                laser = 2,
                missile = 2,
                boarding = 2,
                spin = 0.9,
                pd = 2,
                dodge = 0.8,
                radiator = 1.1,
                armor = 1
            },
            inverted_cone = {
                kinetic = 2.1,
                laser = 2.1,
                missile = 2.1,
                boarding = 2,
                spin = 0.8,
                pd = 2,
                dodge = 0.7,
                radiator = 1,
                armor = 0.9
            },
            echelon = {
                kinetic = 2,
                laser = 2,
                missile = 2,
                boarding = 2,
                spin = 0.9,
                pd = 2,
                dodge = 0.8,
                radiator = 1.1,
                armor = 1
            },
            cube = {
                kinetic = 0.7,
                laser = 0.9,
                missile = 1,
                boarding = 1
            },
            plane = {
                kinetic = 3,
                laser = 3,
                missile = 3,
                boarding = 1.1,
                spin = 0.5,
                pd = 0.5,
                dodge = 0.5,
                radiator = 0.5,
                armor = 0.2
            },
            line = {
                kinetic = 0.9,
                laser = 0.9,
                missile = 0.9,
                boarding = 0.8,
                spin = 0.5,
                pd = 0.5,
                dodge = 0.5,
                radiator = 0.5,
                armor = 0.2
            },

            --special modifier for tactics that are moving AWAY from combat
            --[[retrograde = {
                missile = 0.7,
                radiator = 1.1,
                spin = 1.1,
                pd = 1.2,
                dodge = 1.3,
                armor = 1.3
            }]]
        },

        -- Here are the special properties and triggers for each tactical decision.
        tacticalWeaponChoices = {
            balanced = {
                encouraged_trait = {"weapon_master"}
            },
            laser = {
                encouraged_trait = {"laser_master"}
            },
            kinetic = {
                encouraged_trait = {"missile_master", "kinetic_master"},
                encouraged_religion = {"neo_feudal"}
            },
            defensive = {
                encouraged_trait = {"kinetic_master"}
            },
            boarding = {
                --encouraged_trait = {"kinetic_master"}
            }
        },

        tacticalMovementChoices = {
            column = {
                duration = 4,
            },
            sphere = {
                duration = 6,
            },
            cone = {
                duration = 5,
            },
            inverted_cone = {
                duration = 7,
            },
            echelon = {
                duration = 3,
            },
            cube = {
                duration = 5,
            },
            plane = {
                duration = 8,
            },
            line = {
                duration = 8
            }
        },

        tacticalExtraVariations = {
            --[[retrograde = {
                duration = 5,
                target = "skirmish",
                forbidden_trait = {"pursuit_specialist", "unyielding_leader", "omnicidal_maniac"},
                encouraged_trait = {"long_range_combat_specialist", "desert_terrain_leader", "trickster", "organizer", "defensive_leader" },
                discouraged_trait = {"short_range_specialist", "orbital_combat_specialist"},
                discouraged_religion = {"neo_feudal"}
            }]]
        },

        tactics = {},
        weaponPower = {},
        defensePower = {},
        fromTo = {},
    }
}

local function toPct(inputNumber)
    return math.floor(((inputNumber-1)*100/10)+0.5)*10
end

local tab = "    "
local function line(stringInput, indents)
    local indent = ""
    local counter = 0
    while counter < indents do
        indent = indent .. tab
        counter = counter + 1
    end
    io.write(indent .. stringInput .. "\n")
end

local function printHeader()
    line("# This file was generated, DO NOT edit, you WILL lose the stuff here if someone triggers generation again.", 0)
end

local badMalus = 0.6
local goodBonus = 1.4
local martialCenter = 12

local function printTactic(phase, tacticName, hasBadVariation, hasGoodVariation)
    local tacticData = tacGenData[phase].tactics[tacticName]

    line("", 0)
    line(tacticName .. " = {", 0)
    line("sprite = 1", 1)
    line("days = " .. tacticData.length, 1)
    if tacticData.group then line("group = " .. tacticData.group, 1) end
    line("", 0)
    line("trigger = {", 1)
    line("phase = " .. phase, 2)
    line("days >= " .. (tacticData.days or 1), 2)
    if tacticData.flank_has_leader then line("flank_has_leader = " .. tacticData.flank_has_leader, 2) end
    if tacticData.flank_has_leader and tacticData.flank_has_leader == "yes" then
        line("leader = {", 2)
        if tacticData.martialMaximum then line("martial <= " .. tacticData.martialMaximum, 3) end
        if tacticData.martialMininum then line("martial >= " .. tacticData.martialMininum, 3) end
        --for dk, dv in pairs(tacticData) do print(dk, dv) end
        for pName, pValue in pairs(tacticData) do
            local reqType = string.match(pName, 'required_(%a+)')
            local forbidType = string.match(pName, 'forbidden_(%a+)')
            if reqType then
                line("OR = {", 3)
                for _, traitName in pairs(pValue) do
                    line(reqType .. " = " .. traitName, 4)
                end
                line("}",3)
            end
            if forbidType then
                for _, traitName in pairs(pValue) do
                    line("NOT = { " .. forbidType .. " = " .. traitName .. " }", 3)
                end
            end
        end
        line("}", 2)
    end
    if tacticData.previousTactics then
        line("OR = {", 2)
        for tKey, tName in pairs(tacticData.previousTactics) do
            line("flank_has_tactic = " .. tName, 3)
        end
        line("}", 2)
    end
    line("}", 1)
    line("", 0)
    line("mean_time_to_happen = {", 1)
    line("days = " .. tacticData.chance, 2)
    if tacticData.flank_has_leader and tacticData.flank_has_leader == "yes" then
        line("", 0)
        line("mult_modifier = {", 2)
        line("factor = 4", 3)
        line("leader = {", 3)
        if tacticData.martialMaximum then line("martial <= " .. tacticData.martialMaximum, 4) end
        if tacticData.martialMininum then line("martial >= " .. tacticData.martialMininum, 4) end
        line("}", 3)
        line("}", 2)
        for pName, pValue in pairs(tacticData) do
            local encourageType = string.match(pName, 'encouraged_(%a+)')
            local discourageType = string.match(pName, 'discouraged_(%a+)')
            if encourageType then
                for _, traitName in pairs(pValue) do
                    line("additive_modifier = {", 2)
                    line("value = 30", 3)
                    line("leader = {", 3)
                    line(encourageType .. " = " .. traitName, 4)
                    line("}", 3)
                    line("}", 2)
                end
            end
            if discourageType then
                for _, traitName in pairs(pValue) do
                    line("additive_modifier = {", 2)
                    line("value = -30", 3)
                    line("leader = {", 3)
                    line(discourageType .. " = " .. traitName, 4)
                    line("}", 3)
                    line("}", 2)
                end
            end
        end
    end
    line("}", 1)
    line("", 0)
    line(gameUnitName["gunships"] .. "_offensive = " .. toPct(tacticData.offensebonus["gunships"])/100, 1)
    line(gameUnitName["gunships"] .. "_defensive = " .. toPct(tacticData.defensebonus["gunships"])/100, 1)
    line(gameUnitName["laserships"] .. "_offensive = " .. toPct(tacticData.offensebonus["laserships"])/100, 1)
    line(gameUnitName["laserships"] .. "_defensive = " .. toPct(tacticData.defensebonus["laserships"])/100, 1)
    line(gameUnitName["missileships"] .. "_offensive = " .. toPct(tacticData.offensebonus["missileships"])/100, 1)
    line(gameUnitName["missileships"] .. "_defensive = " .. toPct(tacticData.defensebonus["missileships"])/100, 1)
    line(gameUnitName["destroyers"] .. "_offensive = " .. toPct(tacticData.offensebonus["destroyers"])/100, 1)
    line(gameUnitName["destroyers"] .. "_defensive = " .. toPct(tacticData.defensebonus["destroyers"])/100, 1)
    line(gameUnitName["battleships"] .. "_offensive = " .. toPct(tacticData.offensebonus["battleships"])/100, 1)
    line(gameUnitName["battleships"] .. "_defensive = " .. toPct(tacticData.defensebonus["battleships"])/100, 1)
    line(gameUnitName["trooptransports"] .. "_offensive = " .. toPct(tacticData.offensebonus["trooptransports"])/100, 1)
    line(gameUnitName["trooptransports"] .. "_defensive = " .. toPct(tacticData.defensebonus["trooptransports"])/100, 1)
    line("", 0)
    if tacticData.change_phase_to then line("change_phase_to = " .. tacticData.change_phase_to, 1) end
    line("}", 0)

    if hasBadVariation then
        if not tacGenData[phase].tactics[tacticName .. "_bad"] then
            tacGenData[phase].tactics[tacticName .. "_bad"] = {}
            for k, v in pairs(tacGenData[phase].tactics[tacticName]) do
                if k == "offensebonus" or k == "defensebonus" then
                    tacGenData[phase].tactics[tacticName .. "_bad"][k] = {}
                    for kk, vv in pairs(v) do
                        tacGenData[phase].tactics[tacticName .. "_bad"][k][kk] = vv*badMalus
                    end
                else
                    tacGenData[phase].tactics[tacticName .. "_bad"][k] = v
                end
            end
            tacGenData[phase].tactics[tacticName .. "_bad"].flank_has_leader = "yes"
            if tacticData.martialMininum then
                tacGenData[phase].tactics[tacticName .. "_bad"].martialMaximum = tacticData.martialMininum - 1
            else
                tacGenData[phase].tactics[tacticName .. "_bad"].martialMaximum = math.floor(martialCenter*badMalus)
            end
        end
        printTactic(phase, tacticName .. "_bad", false, false)
    end

    if hasGoodVariation then
        if not tacGenData[phase].tactics[tacticName .. "_good"] then
            tacGenData[phase].tactics[tacticName .. "_good"] = {}
            for k, v in pairs(tacGenData[phase].tactics[tacticName]) do
                if k == "offensebonus" or k == "defensebonus" then
                    tacGenData[phase].tactics[tacticName .. "_good"][k] = {}
                    for kk, vv in pairs(v) do
                        tacGenData[phase].tactics[tacticName .. "_good"][k][kk] = vv*goodBonus
                    end
                else
                    tacGenData[phase].tactics[tacticName .. "_good"][k] = v
                end
            end
            tacGenData[phase].tactics[tacticName .. "_good"].flank_has_leader = "yes"
            if tacticData.martialMaximum then
                tacGenData[phase].tactics[tacticName .. "_good"].martialMininum = tacticData.martialMaximum + 1
            else
                tacGenData[phase].tactics[tacticName .. "_good"].martialMininum = math.floor(martialCenter*goodBonus)
            end
        end
        printTactic(phase, tacticName .. "_good", false, false)
    end
end

local function calculateTactics(phase)
    --first we correct weapon and defense totals, so they still result in 1
    for shipName, shipProperties in pairs(tacGenData[phase].weaponPowerRaw) do
        tacGenData[phase].weaponPower[shipName] = {}
        local totalPower = 0
        for weaponName, weaponValue in pairs(shipProperties) do
            totalPower = totalPower+weaponValue
        end

        for weaponName, weaponValue in pairs(shipProperties) do
            tacGenData[phase].weaponPower[shipName][weaponName] = weaponValue/totalPower
        end
    end

    for shipName, shipProperties in pairs(tacGenData[phase].defensePowerRaw) do
        tacGenData[phase].defensePower[shipName] = {}
        local totalPower = 0
        for defenseName, defenseValue in pairs(shipProperties) do
            totalPower = totalPower+defenseValue
        end

        for defenseName, defenseValue in pairs(shipProperties) do
            tacGenData[phase].defensePower[shipName][defenseName] = defenseValue/totalPower
        end
    end

    -- then we generate undefined but possible tactics
    for choiceName, choiceValue in pairs(tacGenData[phase].tacticalWeaponChoices) do
        for movementName, movementValue in pairs(tacGenData[phase].tacticalMovementChoices) do
            tacGenData[phase].tactics[choiceName.."_"..movementName] = {
                features = {choiceName, movementName},
                length = movementValue.duration+(choiceValue.duration or 0),
                target = movementValue.target,
                chance = 100
            }
            local generatedTactic = tacGenData[phase].tactics[choiceName.."_"..movementName]

            --merge table properties
            for propertyName, propertyValue in pairs(choiceValue) do
                if type(propertyValue) == "table" then
                    --print(propertyName, propertyValue)
                    if not generatedTactic[propertyName] then generatedTactic[propertyName] = propertyValue
                    else
                        for subPName, subPValue in pairs(propertyValue) do
                            table.insert(generatedTactic[propertyName], subPValue)
                        end
                    end
                end
            end

            for propertyName, propertyValue in pairs(movementValue) do
                if type(propertyValue) == "table" then
                    --print(propertyName, propertyValue)
                    if not generatedTactic[propertyName] then generatedTactic[propertyName] = propertyValue
                    else
                        for subPName, subPValue in pairs(propertyValue) do
                            table.insert(generatedTactic[propertyName], subPValue)
                        end
                    end
                end
            end

            for extraName, extraValue in pairs(tacGenData[phase].tacticalExtraVariations) do
                tacGenData[phase].tactics[choiceName.."_"..movementName.."_"..extraName] = {
                    features = generatedTactic.features,
                    length = (extraValue.duration or 0) + generatedTactic.length,
                    target = extraValue.target or generatedTactic.target,
                    chance = 100
                }
                local newTactic = tacGenData[phase].tactics[choiceName.."_"..movementName.."_"..extraName]

                for propertyName, propertyValue in pairs(extraValue) do
                    if type(propertyValue) == "table" then
                        if not newTactic[propertyName] then newTactic[propertyName] = propertyValue
                        else
                            for subPName, subPValue in pairs(propertyValue) do
                                table.insert(generatedTactic[propertyName], subPValue)
                            end
                        end
                    end
                end
            end
        end
    end

    -- then we generate  the phase change tactics
    for tacticName, tacticData in pairs(tacGenData[phase].tactics) do
        if tacticData.target then
            if not tacGenData[phase].fromTo[tacticData.target] then
                tacGenData[phase].fromTo[tacticData.target] = {}
            end
            table.insert(tacGenData[phase].fromTo[tacticData.target], tacticName)
            table.insert(tacGenData[phase].fromTo[tacticData.target], tacticName .. "_bad")
            table.insert(tacGenData[phase].fromTo[tacticData.target], tacticName .. "_good")
        end
    end

    for targetName, sourceTactics in pairs(tacGenData[phase].fromTo) do
        --print(targetName, sourceTactics)
        tacGenData[phase].tactics["arrival_at_"  .. targetName] = {
            features = {},
            length = 1,
            change_phase_to = targetName,
            previousTactics = sourceTactics,
            days = 3,
            chance = 1000000
        }
        --[[for k2, v2 in pairs(v) do
            print(k, v, k2, v2)
        end]]
    end

    -- then we calculate the actual tactics workings
    for tacticName, tacticProperties in pairs(tacGenData[phase].tactics) do
        --print(tacticName)
        local tacticEffects = {}
        local offensebonus = {}
        local defensebonus = {}

        for _, featureName in pairs(tacticProperties.features) do
            --print(featureName)
            for effectName, effectValue in pairs(tacGenData[phase].tacticalFeatures[featureName]) do
                tacticEffects[effectName] = (tacticEffects[effectName] or 1) * effectValue
            end
        end

        --for k, v in pairs(tacticEffects) do print(k, v) end

        for shipName, weaponValues in pairs(tacGenData[phase].weaponPower) do
            for weaponName, weaponValue in pairs(weaponValues) do
                --print(shipName, weaponName, weaponValue)
                offensebonus[shipName] = (offensebonus[shipName] or 0) + weaponValue*(tacticEffects[weaponName] or 1)
            end

            --print(shipName .. "_offense", toPct(offensebonus[shipName]))
        end

        for shipName, defenseValues in pairs(tacGenData[phase].defensePower) do
            for defenseName, defenseValue in pairs(defenseValues) do
                --print(shipName, defenseName, defenseValue)
                defensebonus[shipName] = (defensebonus[shipName] or 0) + defenseValue*(tacticEffects[defenseName] or 1)
            end

            --print(shipName .. "_defense", toPct(defensebonus[shipName]))
        end

        --tacGenData[phase].tactics[tacticName].effects = tacticEffects
        tacGenData[phase].tactics[tacticName].offensebonus = offensebonus
        tacGenData[phase].tactics[tacticName].defensebonus = defensebonus
    end
end

calculateTactics("skirmish")

file = io.open("../confederation at crisis/common/combat_tactics/skirmish_normal.txt", "w")
io.output(file)
printHeader()
printTactic("skirmish", "balanced_direct", true, true)
printTactic("skirmish", "laser_direct", true, true)
printTactic("skirmish", "missile_direct", true, true)
printTactic("skirmish", "defensive_direct", true, true)
printTactic("skirmish", "balanced_weave", true, true)
printTactic("skirmish", "laser_weave", true, true)
printTactic("skirmish", "missile_weave", true, true)
printTactic("skirmish", "defensive_weave", true, true)
printTactic("skirmish", "balanced_direct_retrograde", true, true)
printTactic("skirmish", "laser_direct_retrograde", true, true)
printTactic("skirmish", "missile_direct_retrograde", true, true)
printTactic("skirmish", "defensive_direct_retrograde", true, true)
printTactic("skirmish", "balanced_weave_retrograde", true, true)
printTactic("skirmish", "laser_weave_retrograde", true, true)
printTactic("skirmish", "missile_weave_retrograde", true, true)
printTactic("skirmish", "defensive_weave_retrograde", true, true)
io.close(file)


file = io.open("../confederation at crisis/common/combat_tactics/phase_change.txt", "w")
io.output(file)
printHeader()
printTactic("skirmish", "arrival_at_skirmish", false, false)
printTactic("skirmish", "arrival_at_melee", false, false)
io.close(file)

calculateTactics("melee")

file = io.open("../confederation at crisis/common/combat_tactics/melee_normal.txt", "w")
io.output(file)
printHeader()
printTactic("melee", "balanced_column", false, false)
printTactic("melee", "balanced_sphere", false, false)
printTactic("melee", "balanced_cone", false, false)
printTactic("melee", "balanced_inverted_cone", false, false)
printTactic("melee", "balanced_echelon", false, false)
printTactic("melee", "balanced_cube", false, false)
printTactic("melee", "laser_column", false, false)
printTactic("melee", "laser_sphere", false, false)
printTactic("melee", "laser_cone", false, false)
printTactic("melee", "laser_inverted_cone", false, false)
printTactic("melee", "laser_echelon", false, false)
printTactic("melee", "laser_cube", false, false)
printTactic("melee", "kinetic_column", false, false)
printTactic("melee", "kinetic_sphere", false, false)
printTactic("melee", "kinetic_cone", false, false)
printTactic("melee", "kinetic_inverted_cone", false, false)
printTactic("melee", "kinetic_echelon", false, false)
printTactic("melee", "kinetic_cube", false, false)
printTactic("melee", "defensive_column", false, false)
printTactic("melee", "defensive_sphere", false, false)
printTactic("melee", "defensive_cone", false, false)
printTactic("melee", "defensive_inverted_cone", false, false)
printTactic("melee", "defensive_echelon", false, false)
printTactic("melee", "defensive_cube", false, false)
printTactic("melee", "boarding_column", false, false)
printTactic("melee", "boarding_sphere", false, false)
printTactic("melee", "boarding_cone", false, false)
printTactic("melee", "boarding_inverted_cone", false, false)
printTactic("melee", "boarding_echelon", false, false)
printTactic("melee", "boarding_cube", false, false)
io.close(file)

--tactic_name = {                             # Tactic name, localised
--    days = 6                                # In-game duration
--
--    sprite = 4                              # Appropriate unit sprite, see above
--
--    group = skirmish                        # Used to define affinity bonus
--
--    trigger = {                             # Contains list of requirements for this tactic to
--                                            # be added to the pool of available tactics
--
--        phase = skirmish                    # Required combat phase
--
--        days >= 6                           # Only available after this many days of combat
--
--        is_attacker = yes/no                # Required to be attacking/defending
--
--        location = {                        # Province where combat is taking place
--            terrain = marsh                 # Check terrain type
--            is_winter = no                  # Check winter season
--            climate = severe_winter         # Check winter climate
--            is_coastal = yes/no             # Check whether inland or coastal
--            borders_lake = yes/no           # Check for nearby lake
--            borders_major_river = yes/no    # Check for nearby river
--        }
--
--        leader = {                          # Commander of this flank
--            martial >= 10                   # Required martial skill
--            trait = strategist              # Required trait
--            liege = {}                      # Useful scope to check technology etc.
--            mercenary_employer = {}         # Use for hired mercenary commanders
--            enemy = {                       # Scope to enemy flank
--                troops = {}                 # See below
--                leader = {                  # Enemy commander
--                    ROOT = {                # Back to own flank
--                        leader = {}         # Back to own commander
--                    }
--                }
--            }
--        }
--
--        flank_has_leader = yes              # Restrict to flanks with or without a commander
--
--        flank_has_tactic = tactic           # Required to have this tactic
--
--        light_cavalry >= 0.1                # At least 10% of flank must be this troop type
--
--        troops = {                          # Above also includes special troops based
--            who = light_cavalry             # on light cavalry (horse archers,
--            value <= 0.1                    # camel cavalry, see 00_special_troops.txt)
--        }                                   # This nested check is troop-type specific
--
--        light_troops = {                    # Only compares archers to light troops
--            who = archers
--            value >= 0.2
--        }
--
--        pikemen = {                         # Requires having at least 20% as many
--            who = archers                   # pikemen as archers
--            value >= 0.2
--        }
--
--        troops = {                          # Checks if own flank is at least 60%
--            who = troops                    # the size of the enemy flank
--            value >= 0.6                    # Can also compare specific troop types
--            enemy = yes                     # on either side
--        }
--
--        archers = {                         # Requires having at least twice as many
--            who = knights                   # archers as enemy has heavy cavalry
--            value >= 2.0
--            enemy = yes
--        }
--    }
--
--    mean_time_to_happen = {                 # Likelihood of being selected
--        days = 10                           # Base weight for selection
--
--        additive_modifier = {               # Additive modifiers are evaluated first
--            value = 3                       # Added to base weight
--
--            triggers                        # Requirements to use above factor
--        }
--
--        mult_modifier = {                   # Multiplicative modifiers are evaluated afterwards
--            factor = 1.5                    # Tactic's weight is multiplied by this,
--                                            # can be zero to eliminate tactic
--            triggers                        # Requirements to use above factor
--        }
--    }
--
--    light_infantry_morale = 0.2             # 20% morale increase
--    knights_defensive = -0.1                # 10% defense decrease
--    horse_archers_offensive = 1.0           # 100% attack increase
--
--    enemy = {                               # Define affinity, more than one is possible
--        group = swarm                       # Against this group of tactics
--        factor = 0.5                        # 50% bonus
--    }
--}
