local hexaco = {
    honesty = {
        deceitful = {
            ai_honor = -70,
            ai_greed = 70,
            ai_ambition = 50,
            ai_zeal = -10
        },
        honest = {
            ai_honor = 70,
            ai_greed = -60,
            ai_ambition = -90,
            ai_zeal = 10
        }
    },
    openness = {
        open_minded = {
            ai_zeal = -30,
            ai_rationality = -30,
            ai_ambition = 10,
            ai_greed = -10
        },
        close_minded = {
            ai_zeal = 50,
            ai_rationality = 30,
            ai_ambition = -20,
            ai_greed = 30,
            ai_honor = -10
        }
    },
    conscientiousness = {
        disciplined = {
            ai_honor = 30,
            ai_greed = 30,
            ai_ambition = 30,
            ai_rationality = 50,
            ai_zeal = 20
        },
        carefree = {
            ai_honor = -30,
            ai_greed = -20,
            ai_ambition = -40,
            ai_rationality = -20,
            ai_zeal = -20
        }
    },
    extroversion = {
        extraverted = {
            ai_ambition = 5,
            ai_greed = 10,
            ai_rationality = -10
        },
        introverted = {
            ai_rationality = 20,
            ai_honor = 10
        }
    },
    agreeableness = {
        friendly = {
            ai_honor = 10,
            ai_greed = -10,
            ai_ambition = -5,
            ai_zeal = -20,
            ai_rationality = -20
        },
        cold = {
            ai_honor = -10,
            ai_greed = 10,
            ai_ambition = 20,
            ai_zeal = 40,
            ai_rationality = 60
        }
    },
    neuroticism = {
        neurotic = {
            ai_honor = -30,
            ai_greed = 10,
            ai_ambition = 10,
            ai_rationality = -40,
            ai_zeal = -10
        },
        confident = {
            ai_honor = 30,
            ai_rationality =  -10,
            ai_zeal = 10
        }
    }
}

local function addTrait(inputAI, traitDefinition)
    inputAI.ai_ambition = inputAI.ai_ambition + (traitDefinition.ai_ambition or 0)
    inputAI.ai_greed = inputAI.ai_greed + (traitDefinition.ai_greed or 0)
    inputAI.ai_honor = inputAI.ai_honor + (traitDefinition.ai_honor or 0)
    inputAI.ai_rationality = inputAI.ai_rationality + (traitDefinition.ai_rationality or 0)
    inputAI.ai_zeal = inputAI.ai_zeal + (traitDefinition.ai_zeal or 0)
    return inputAI
end

local function generateBaseAI(honesty, openness, conscientiousness, extroversion, agreeableness, neuroticism)
    local generatedAI = {
        ai_ambition = 0,
        ai_greed = 0,
        ai_honor = 0,
        ai_rationality = 0,
        ai_zeal = 0
    }
    if honesty == -1 then
        generatedAI = addTrait(generatedAI, hexaco.honesty.deceitful)
    elseif honesty == 1 then
        generatedAI = addTrait(generatedAI, hexaco.honesty.honest)
    end
    if openness == -1 then
        generatedAI = addTrait(generatedAI, hexaco.openness.close_minded)
    elseif openness == 1 then
        generatedAI = addTrait(generatedAI, hexaco.openness.open_minded)
    end
    if conscientiousness == -1 then
        generatedAI = addTrait(generatedAI, hexaco.conscientiousness.carefree)
    elseif conscientiousness == 1 then
        generatedAI = addTrait(generatedAI, hexaco.conscientiousness.disciplined)
    end
    if extroversion == -1 then
        generatedAI = addTrait(generatedAI, hexaco.extroversion.introverted)
    elseif extroversion == 1 then
        generatedAI = addTrait(generatedAI, hexaco.extroversion.extraverted)
    end
    if agreeableness == -1 then
        generatedAI = addTrait(generatedAI, hexaco.agreeableness.cold)
    elseif agreeableness == 1 then
        generatedAI = addTrait(generatedAI, hexaco.agreeableness.friendly)
    end
    if neuroticism == -1 then
        generatedAI = addTrait(generatedAI, hexaco.neuroticism.neurotic)
    elseif neuroticism == 1 then
        generatedAI = addTrait(generatedAI, hexaco.neuroticism.confident)
    end

    return generatedAI
end

local function printAI(aiData)
    print("Ambition      " .. aiData.ai_ambition)
    print("Greed         " .. aiData.ai_greed)
    print("Honor         " .. aiData.ai_honor)
    print("Rationality   " .. aiData.ai_rationality)
    print("Zeal          " .. aiData.ai_zeal)
end

local function scoreGen(prevScores)
    if prevScores[1] and #prevScores[1] == 6 then
        return prevScores
    end
    local upper = {}
    local middle = {}
    local lower = {}
    for k, v in pairs(prevScores) do
        upper[k] = {}
        middle[k] = {}
        lower[k] = {}
        for kk, vv in pairs(v) do
            upper[k][kk] = vv
            middle[k][kk] = vv
            lower[k][kk] = vv
        end
        upper[k][#upper[k]+1] = 1
        middle[k][#middle[k]+1] = 0
        lower[k][#lower[k]+1] = -1
    end
    upper = scoreGen(upper)
    middle = scoreGen(middle)
    lower = scoreGen(lower)
    --print(table.unpack(upper[1]))
    --print(table.unpack(middle[1]))
    --print(table.unpack(lower[1]))
    local newScores = {}
    for k, v in pairs(upper) do
        newScores[#newScores + 1] = v
    end
    for k, v in pairs(middle) do
        newScores[#newScores + 1] = v
    end
    for k, v in pairs(lower) do
        newScores[#newScores + 1] = v
    end
    return newScores
end

local function calculate()
    local aiScores = {{1}, {0}, {-1}}
    local genAIs = {}
    --aiScores[1] = {1, 1, 1, -1, -1, -1}
    --aiScores[2] = {1, 0, 1, -1, 0, -1}
    aiScores = scoreGen(aiScores)
    print(#aiScores)

    for aiID, score in pairs(aiScores) do
        local genAI = generateBaseAI(score[1], score[2], score[3], score[4], score[5], score[6])
        genAIs[aiID] = genAI
        --print("AI HEXACO", table.unpack(aiScores[aiID]))
        --printAI(genAI)
    end

    local AmbitionAvg = 0
    local GreedAvg = 0
    local HonorAvg = 0
    local RationalityAvg = 0
    local ZealAvg = 0
    local lowestAmbition = 100
    local lowestAmbitionID = -1
    local highestAmbition = -100
    local highestAmbitionID = -1
    local lowestGreed = 100
    local lowestGreedID = -1
    local highestGreed = -100
    local highestGreedID = -1
    local lowestHonor = 100
    local lowestHonorID = -1
    local highestHonor = -100
    local highestHonorID = -1
    local lowestRationality = 100
    local lowestRationalityID = -1
    local highestRationality = -100
    local highestRationalityID = -1
    local lowestZeal = 100
    local lowestZealID = -1
    local highestZeal = -100
    local highestZealID = -1
    for aiID, data in pairs(genAIs) do
        AmbitionAvg = AmbitionAvg + data.ai_ambition
        GreedAvg = GreedAvg + data.ai_greed
        HonorAvg = HonorAvg + data.ai_honor
        RationalityAvg = RationalityAvg + data.ai_rationality
        ZealAvg = ZealAvg + data.ai_rationality
        if data.ai_ambition < lowestAmbition then
            lowestAmbition  = data.ai_ambition
            lowestAmbitionID = aiID
        end
        if data.ai_ambition > highestAmbition then
            highestAmbition  = data.ai_ambition
            highestAmbitionID = aiID
        end
        if data.ai_greed < lowestGreed then
            lowestGreed  = data.ai_greed
            lowestGreedID = aiID
        end
        if data.ai_greed > highestGreed then
            highestGreed  = data.ai_greed
            highestGreedID = aiID
        end
        if data.ai_honor < lowestHonor then
            lowestHonor  = data.ai_honor
            lowestHonorID = aiID
        end
        if data.ai_honor > highestHonor then
            highestHonor  = data.ai_honor
            highestHonorID = aiID
        end
        if data.ai_rationality < lowestRationality then
            lowestRationality  = data.ai_rationality
            lowestRationalityID = aiID
        end
        if data.ai_rationality > highestRationality then
            highestRationality  = data.ai_rationality
            highestRationalityID = aiID
        end
        if data.ai_zeal < lowestZeal then
            lowestZeal  = data.ai_zeal
            lowestZealID = aiID
        end
        if data.ai_zeal > highestZeal then
            highestZeal  = data.ai_zeal
            highestZealID = aiID
        end
    end

    AmbitionAvg = AmbitionAvg/#genAIs
    GreedAvg = GreedAvg/#genAIs
    HonorAvg = HonorAvg/#genAIs
    RationalityAvg = RationalityAvg/#genAIs
    ZealAvg = ZealAvg/#genAIs

    print("AI with lowest Ambition possible")
    print("AI HEXACO", table.unpack(aiScores[lowestAmbitionID]))
    printAI(genAIs[lowestAmbitionID])
    print("AI with highest Ambition possible")
    print("AI HEXACO", table.unpack(aiScores[highestAmbitionID]))
    printAI(genAIs[highestAmbitionID])
    print("AI with lowest Greed possible")
    print("AI HEXACO", table.unpack(aiScores[lowestGreedID]))
    printAI(genAIs[lowestGreedID])
    print("AI with highest Greed possible")
    print("AI HEXACO", table.unpack(aiScores[highestGreedID]))
    printAI(genAIs[highestGreedID])
    print("AI with lowest Honor possible")
    print("AI HEXACO", table.unpack(aiScores[lowestHonorID]))
    printAI(genAIs[lowestHonorID])
    print("AI with highest Honor possible")
    print("AI HEXACO", table.unpack(aiScores[highestHonorID]))
    printAI(genAIs[highestHonorID])
    print("AI with lowest Rationality possible")
    print("AI HEXACO", table.unpack(aiScores[lowestRationalityID]))
    printAI(genAIs[lowestRationalityID])
    print("AI with highest Rationality possible")
    print("AI HEXACO", table.unpack(aiScores[highestRationalityID]))
    printAI(genAIs[highestRationalityID])
    print("AI with lowest Zeal possible")
    print("AI HEXACO", table.unpack(aiScores[lowestZealID]))
    printAI(genAIs[lowestZealID])
    print("AI with highest Zeal possible")
    print("AI HEXACO", table.unpack(aiScores[highestZealID]))
    printAI(genAIs[highestZealID])

    print("AmbitionAvg", AmbitionAvg)
    print("GreedAvg", GreedAvg)
    print("HonorAvg", HonorAvg)
    print("RationalityAvg", RationalityAvg)
    print("ZealAvg", ZealAvg)
end

calculate()
