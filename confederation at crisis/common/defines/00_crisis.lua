-- Format for overwriting define values:
--
-- NDefines.NDiplomacy.DEMESNE_BASE_MAX_SIZE = 2.0
NDefines.NCouncil.COUNCIL_REJECTED_LAW_TIMEOUT = 5
NDefines.NCouncil.COUNCIL_REJECTED_CROWN_LAW_TIMEOUT = 3
NDefines.NCouncil.COUNCIL_REJECTION_ALL_LAWS_TIMEOUT = 0.5
NDefines.NCouncil.COUNCIL_REJECTION_ALL_CROWN_LAWS_TIMEOUT = 0.5

NDefines.NDiplomacy.DEMESNE_MAX_SIZE_KING_MULT = 1.5			-- Extra Max Demesne Size from the ruler's rank
NDefines.NDiplomacy.DEMESNE_MAX_SIZE_EMPEROR_MULT = 2		-- Extra Max Demesne Size from the ruler's rank

NDefines.NCharacter.PORTRAIT_ADULT_MALE_AGE_THRESHOLD = 14
NDefines.NCharacter.MAX_LED_FACTIONS = 3
NDefines.NCharacter.MAX_JOINED_FACTIONS = 4
NDefines.NCharacter.PORTRAIT_ADULT_FEMALE_AGE_THRESHOLD = 14
NDefines.NCharacter.PORTRAIT_MID_AGE_THRESHOLD = 40
NDefines.NCharacter.PORTRAIT_OLD_AGE_THRESHOLD = 60
NDefines.NCharacter.AGE_OF_ADULTHOOD_MALE = 18
NDefines.NCharacter.AGE_OF_ADULTHOOD_FEMALE = 18
NDefines.NCharacter.AGE_OF_MARRIAGE_MALE = 18
NDefines.NCharacter.AGE_OF_MARRIAGE_FEMALE = 18
NDefines.NCharacter.AGE_ADULT = 40
NDefines.NCharacter.AGE_OLD = 60
NDefines.NCharacter.AGE_VERY_OLD = 80
NDefines.NCharacter.MAX_CHILD_BIRTH_AGE = 50
NDefines.NCharacter.BASE_NR_OF_CHILDREN_PER_COUPLE = 0
NDefines.NCharacter.EXTRA_NR_OF_CHILDREN_FOR_PLAYERS = 0
NDefines.NCharacter.NATURAL_DEATH_CHANCE_AGE_0 = 0
NDefines.NCharacter.NATURAL_DEATH_CHANCE_AGE_10 = 0
NDefines.NCharacter.NATURAL_DEATH_CHANCE_AGE_20 = 0
NDefines.NCharacter.NATURAL_DEATH_CHANCE_AGE_30 = 0
NDefines.NCharacter.NATURAL_DEATH_CHANCE_AGE_40 = 25
NDefines.NCharacter.NATURAL_DEATH_CHANCE_AGE_50 = 50
NDefines.NCharacter.NATURAL_DEATH_CHANCE_AGE_60 = 200
NDefines.NCharacter.NATURAL_DEATH_CHANCE_AGE_70 = 1000
NDefines.NCharacter.NATURAL_DEATH_CHANCE_AGE_80 = 2000
NDefines.NCharacter.NATURAL_DEATH_CHANCE_AGE_90 = 4000
NDefines.NCharacter.NATURAL_DEATH_CHANCE_AGE_100 = 8000
NDefines.NCharacter.FERTILITY_BASE_MULT = 0.25
NDefines.NCharacter.INFANT_DEATH_CHANCE = 0
NDefines.NCharacter.FEMALE_ATTRACTION_CUTOFF = 65

NDefines.NDiplomacy.DEMAND_RELIGIOUS_CONVERSION_INTERACTION_THRESHOLD_FOR_NO = 75
NDefines.NDiplomacy.DEMAND_RELIGIOUS_CONVERSION_INTERACTION_THRESHOLD_FOR_YES = 75

NDefines.NTitle.MAX_CROWN_LAW_CHANGES = -1
NDefines.NTitle.DE_JURE_ASSIMILATION_YEARS = 25

NDefines.NTitle.GAME_RULES_DEJURE_LONG = 50
NDefines.NTitle.GAME_RULES_DEJURE_LONG_EMPIRE = 50

NDefines.NTitle.GAME_RULES_DEJURE_SHORT = 20
NDefines.NTitle.GAME_RULES_DEJURE_SHORT_EMPIRE = 20

NDefines.NTitle.GAME_RULES_DEJURE_SHORTEST = 10
NDefines.NTitle.GAME_RULES_DEJURE_SHORTEST_EMPIRE = 10

NDefines.NTitle.ALLOW_DE_JURE_ASSIMILATION_ANYWHERE = 0
NDefines.NTitle.MAX_REPUBLIC_COUNTIES_IN_REALM = 1
NDefines.NTitle.MAX_THEOCRACY_COUNTIES_IN_REALM = 1
NDefines.NTitle.THEOCRACY_COUNTIES_CAN_BORDER = 1
NDefines.NTitle.REPUBLIC_COUNTIES_CAN_BORDER = 1
NDefines.NTitle.MILITARY_GOV_CREATE_KINGDOMS = 1

NDefines.NTitle.DEJURE_COUNTY_LIMIT_TO_CREATE = 0.5
NDefines.NTitle.EMPIRE_DEJURE_COUNTY_LIMIT_TO_CREATE = 0.5
NDefines.NTitle.EMPIRE_DEJURE_COUNTY_LIMIT_TO_USURP = 0.51

NDefines.NEconomy.HOLDING_SLOT_BUILD_COST_MOD = 3

NDefines.NMilitary.MERCENARY_MAINTENANCE_FACTOR = 4	    		-- Maintenance factor for NORMAL mercenary units
NDefines.NMilitary.MERCENARY_VASSAL_MAINTENANCE_FACTOR = 1		-- Maintenance factor for VASSALIZED mercenary units
NDefines.NMilitary.MERCENARY_HIRE_COST_FACTOR = 0.2   			-- Hire cost factor for mercenary units
NDefines.NMilitary.HOLY_ORDER_HIRE_COST_FACTOR = 0.2				-- Conversion of nominal gold cost to piety cost when hiring Holy Orders
NDefines.NMilitary.HOLY_ORDER_DYNASTY_HIRE_COST_FACTOR = 0.1		-- Reduction of cost if the Holy Order is controlled by a dynasty member
NDefines.NMilitary.VASSAL_MERC_HIRE_COST_FACTOR = 0.1			-- Fraction of nominal hire cost when hiring vassal mercenaries OR Holy Orders
NDefines.NMilitary.MERCENARY_HIRE_DISTANCE_THRESHOLD = 800
NDefines.NMilitary.REINFORCE_RATE = 0.2                          -- Reinforce rate per year, it is increased compared to vanilla because building ships is easier than making people reproduce

-- retinue stuff
NDefines.NMilitary.RETINUE_FROM_REALMSIZE = 10
NDefines.NMilitary.RETINUE_HIRE_COST_MULTIPLIER = 0
NDefines.NMilitary.RETINUE_REINFORCE_COST = 1
NDefines.NMilitary.RETINUE_CONSTANT_COST = 1
NDefines.NMilitary.MIN_RETINUE = 0
NDefines.NMilitary.RETINUE_INCREASE_PER_TECH = 0
NDefines.NMilitary.RETINUE_REINFORCE_RATE = 0.025

NDefines.NMilitary.OTHER_TERRITORY_LEVY_RETURN_PERCENT = 0.3 -- Harsher than vanilla. Being stranded in space is terrible.

NDefines.NMilitary.MORALE_COLLAPSE_THRESHOLD = 0.35               -- Ships are expensive thus retreating easlier is more common
NDefines.NMilitary.ATTACK_TO_DAMAGE_MULT = 0.004                   -- Attack value of troops is multiplied by this when doing damage
NDefines.NMilitary.BATTLE_MINIMUM_WARSCORE = 0 --all battles count on warscore, to enable  attrition warfare and hit and run tactics

-- siege related stuff
NDefines.NMilitary.ATTACKER_SIEGE_DAMAGE = 0.1                      -- Skirmish damage done by defenders on attackers
NDefines.NMilitary.DEFENDER_SIEGE_DAMAGE = 0.1                      -- Skirmish damage done by attackers on defenders
NDefines.NMilitary.PERCENT_OF_GARRISON_DETACHED = 0.1               -- How many people of your forces become the new garrison
NDefines.NMilitary.NUM_DAYS_BETWEEN_SIEGE_MORALE_LOSS = 6        -- Number of days between morale loss for defender in a siege
NDefines.NMilitary.SIEGE_MORALE_LOSS = 0.15                                        -- Base monthly morale loss in a siege
NDefines.NMilitary.FORT_LEVEL_MORALE_LOSS_REDUCTION_MULT = 4.0    -- Fort Level effect on morale loss (a higher value slows down morale loss)
NDefines.NMilitary.DAYS_BEFORE_DEFENDER_SALLY = 2                 -- Number of days before defenders sally in a siege where they have superior numbers
NDefines.NMilitary.ATTACKER_ASSULT_DAMAGE_FACTOR = 1.5             -- How much damage attackers take when assaulting
NDefines.NMilitary.DEFENDER_ASSULT_DAMAGE_FACTOR = 0.5            -- How much damage defenders take when assaulting
NDefines.NMilitary.DAYS_PER_FORTLEVEL_BEFORE_ASSAULT = 5         -- Number of days until attacker can assault


-- atrrition related stuff
NDefines.NMilitary.ATTRITION_LEVEL_FACTOR = 0.5
NDefines.NMilitary.ATTRITION_LEVEL_FACTOR_50_OVER = 1
NDefines.NMilitary.ATTRITION_LEVEL_FACTOR_100_OVER = 2
NDefines.NMilitary.OWN_SETTLEMENT_SUPPLY_BONUS = 0.26          --for some reason this is multiplied by 3 in-game, thus actual number is 0.78 O.o
NDefines.NMilitary.NEUTRAL_SETTLEMENT_SUPPLY_BONUS = 0.25
NDefines.NMilitary.CONTROL_SETTLEMENT_SUPPLY_BONUS = 0.25
NDefines.NMilitary.ENEMY_SETTLEMENT_SUPPLY_BONUS = 0
NDefines.NMilitary.HOSTILE_RELIGION_SUPPLY_MOD = 0
NDefines.NMilitary.NEARBY_SETTLEMENT_SINGLE_SUPPLY_BONUS = 0.75
NDefines.NMilitary.MAX_ATTRITION_LEADER_REDUCTION = -0.1
NDefines.NMilitary.COASTAL_SUPPLY_BONUS = 0
NDefines.NMilitary.PAGAN_HOME_SUPPLY_MOD = 1
NDefines.NMilitary.NAVAL_ATTRITION = 0.0
NDefines.NMilitary.DIFFERENT_RELIGIONGROUP_SUPPLY_PENALTY = 0
NDefines.NMilitary.SUPPLY_CAPACITY = 31                       -- Amount of days of worth supply that a unit can hold.
NDefines.NMilitary.OUT_OF_SUPPLY_ATTRITION_BASE = 0.05       -- The attrition a unit that is out of supply takes.
NDefines.NMilitary.OUT_OF_SUPPLY_ATTRITION_INCREASE = 0.01  -- The increase per tick of attrition a unit that is out of supply takes.
NDefines.NMilitary.OUT_OF_SUPPLY_ATTRITION_TICK = 1           -- The amount of days per tick for increase of attrition.
NDefines.NMilitary.FORAGING_PILLAGE_MODIFIER = 0.15           -- Modifies how much loot the army takes when re-supplying itself in enemy territory},
--some attrition supplies are in the file static_modifiers.txt, see that file.


NDefines.NMilitary.MAX_COMMANDERS_BARON = 3
NDefines.NMilitary.MAX_COMMANDERS_COUNT = 6
NDefines.NMilitary.MAX_COMMANDERS_DUKE = 9
NDefines.NMilitary.MAX_COMMANDERS_KING = 12
NDefines.NMilitary.MAX_COMMANDERS_EMPEROR = 15

local militaryMaintenanceAdjustement = 10

-- Ship Combat Stats
-- Gunships, they are agile, can improve turrets point defense by turning and shooting with main guns.
-- They can also spin themselves to protect against lasers. They are fragile overall though.
-- Also ammo is not cheap, so they cost a little more than normal to maintain.
-- Utterly useless in skirmish phase because slight thrust in any direction is enough to dodge their attacks.
NDefines.NMilitary.LIGHT_INFANTRY_MORALE = 1
NDefines.NMilitary.LIGHT_INFANTRY_MAINTENANCE = 1.2*militaryMaintenanceAdjustement
NDefines.NMilitary.LIGHT_INFANTRY_PHASE_SKIRMISH_ATTACK = 0
NDefines.NMilitary.LIGHT_INFANTRY_PHASE_SKIRMISH_DEFENSE = 5
NDefines.NMilitary.LIGHT_INFANTRY_PHASE_MELEE_ATTACK = 4
NDefines.NMilitary.LIGHT_INFANTRY_PHASE_MELEE_DEFENSE = 5
NDefines.NMilitary.LIGHT_INFANTRY_PHASE_PURSUE_ATTACK = 0
NDefines.NMilitary.LIGHT_INFANTRY_PHASE_PURSUE_DEFENSE = 1
NDefines.NMilitary.LIGHT_INFANTRY_GRAPHICAL_FACTOR = 1

-- Laserships, they pack a big laser and can hit stuff long range, they also can easily hit fast ships in melee.
-- they are fragile though, their systems being rather delicate.
NDefines.NMilitary.HEAVY_INFANTRY_MORALE = 1
NDefines.NMilitary.HEAVY_INFANTRY_MAINTENANCE = 1*militaryMaintenanceAdjustement
NDefines.NMilitary.HEAVY_INFANTRY_PHASE_SKIRMISH_ATTACK = 2
NDefines.NMilitary.HEAVY_INFANTRY_PHASE_SKIRMISH_DEFENSE = 2
NDefines.NMilitary.HEAVY_INFANTRY_PHASE_MELEE_ATTACK = 5
NDefines.NMilitary.HEAVY_INFANTRY_PHASE_MELEE_DEFENSE = 2
NDefines.NMilitary.HEAVY_INFANTRY_PHASE_PURSUE_ATTACK = 0
NDefines.NMilitary.HEAVY_INFANTRY_PHASE_PURSUE_DEFENSE = 1
NDefines.NMilitary.HEAVY_INFANTRY_GRAPHICAL_FACTOR = 1

-- Missile ships, their purpose is to stand back firing missile volleys, at skirmish their damage is not impressive because
-- it is rather easy to defend against missiles at large distances. Ammo is not free, so they also have more maintenance.
NDefines.NMilitary.PIKEMEN_MORALE = 1
NDefines.NMilitary.PIKEMEN_MAINTENANCE = 1.2*militaryMaintenanceAdjustement
NDefines.NMilitary.PIKEMEN_PHASE_SKIRMISH_ATTACK = 1
NDefines.NMilitary.PIKEMEN_PHASE_SKIRMISH_DEFENSE = 4
NDefines.NMilitary.PIKEMEN_PHASE_MELEE_ATTACK = 3
NDefines.NMilitary.PIKEMEN_PHASE_MELEE_DEFENSE = 4
NDefines.NMilitary.PIKEMEN_PHASE_PURSUE_ATTACK = 0
NDefines.NMilitary.PIKEMEN_PHASE_PURSUE_DEFENSE = 1
NDefines.NMilitary.PIKEMEN_GRAPHICAL_FACTOR = 1

-- Destroyers. They have all weapons, and are medium-sized, we can use them as "reference" ship, other ships having their stats based off them.
-- Because they have all weapons they are more expensive to maintain.
NDefines.NMilitary.LIGHT_CAVALRY_MORALE = 2
NDefines.NMilitary.LIGHT_CAVALRY_MAINTENANCE = 2*militaryMaintenanceAdjustement
NDefines.NMilitary.LIGHT_CAVALRY_PHASE_SKIRMISH_ATTACK = 1
NDefines.NMilitary.LIGHT_CAVALRY_PHASE_SKIRMISH_DEFENSE = 4
NDefines.NMilitary.LIGHT_CAVALRY_PHASE_MELEE_ATTACK = 6
NDefines.NMilitary.LIGHT_CAVALRY_PHASE_MELEE_DEFENSE = 4
NDefines.NMilitary.LIGHT_CAVALRY_PHASE_PURSUE_ATTACK = 0
NDefines.NMilitary.LIGHT_CAVALRY_PHASE_PURSUE_DEFENSE = 1
NDefines.NMilitary.LIGHT_CAVALRY_GRAPHICAL_FACTOR = 2

-- Battleships. They are big, heavily armed, have a powerful laser to use in skirmishing, but are expensive to maintain and slow.
-- They also have some marines, thus can land them on planets or board ships, or defend against boarding.
NDefines.NMilitary.KNIGHTS_MORALE = 4
NDefines.NMilitary.KNIGHTS_MAINTENANCE = 5*militaryMaintenanceAdjustement
NDefines.NMilitary.KNIGHTS_PHASE_SKIRMISH_ATTACK = 3
NDefines.NMilitary.KNIGHTS_PHASE_SKIRMISH_DEFENSE = 8
NDefines.NMilitary.KNIGHTS_PHASE_MELEE_ATTACK = 8
NDefines.NMilitary.KNIGHTS_PHASE_MELEE_DEFENSE = 8
NDefines.NMilitary.KNIGHTS_PHASE_PURSUE_ATTACK = 0
NDefines.NMilitary.KNIGHTS_PHASE_PURSUE_DEFENSE = 1
NDefines.NMilitary.KNIGHTS_GRAPHICAL_FACTOR = 5

-- Troop transports, they have small lasers for self defense, but otherwise the only way they can attack are boarding ships.
-- They are essential in sieges.
-- Also because of how the game rules work in non-assault sieges they need big numbers, thus numbers here are divided by their multiplier.
local transportMultiplier = 4
NDefines.NMilitary.ARCHERS_MORALE = 5/transportMultiplier
NDefines.NMilitary.ARCHERS_MAINTENANCE = (5/transportMultiplier)*militaryMaintenanceAdjustement
NDefines.NMilitary.ARCHERS_PHASE_SKIRMISH_ATTACK = 0/transportMultiplier
NDefines.NMilitary.ARCHERS_PHASE_SKIRMISH_DEFENSE = 6/transportMultiplier
NDefines.NMilitary.ARCHERS_PHASE_MELEE_ATTACK = 5/transportMultiplier
NDefines.NMilitary.ARCHERS_PHASE_MELEE_DEFENSE = 6/transportMultiplier
NDefines.NMilitary.ARCHERS_PHASE_PURSUE_ATTACK = 0/transportMultiplier
NDefines.NMilitary.ARCHERS_PHASE_PURSUE_DEFENSE = 1/transportMultiplier
NDefines.NMilitary.ARCHERS_GRAPHICAL_FACTOR = 1/transportMultiplier

NDefines.NTechnology.DONT_EXECUTE_TECH_BEFORE = 2000
NDefines.NTechnology.IDEAL_YEAR_LEVEL_0 = 2998
NDefines.NTechnology.IDEAL_YEAR_LEVEL_8 = 4000

NDefines.NAI.MAX_EMPIRE_TITLES_TO_CREATE = 1
NDefines.NAI.AI_EMPEROR_CREATES_KINGDOMS = 1
-- Format for overwriting define values:
--
-- NDefines.NDiplomacy.DEMESNE_BASE_MAX_SIZE = 2.0

-- Last updated 0.1 for 2.8.1.1

NDefines.NNomad.POPULATION_INCREASE_MULTIPLIER = 0.04 -- 0.01 vanilla
NDefines.NNomad.MANPOWER_INCREASE_MULTIPLIER = 0.4 -- 0.1 vanilla
NDefines.NNomad.POPULATION_TAX_MULTIPLIER = 0.0015 -- 0.0005 vanilla
NDefines.NNomad.MAX_POPULATION_EMPTY_HOLDING_MULTIPLIER = 1000 -- 1000 vanilla
NDefines.NNomad.MAX_MANPOWER_POPULATION_MULTIPLIER = 0.35 -- 0.20 vanilla
NDefines.NNomad.START_POPULATION = 0.50 -- 0.40 vanilla
NDefines.NNomad.START_MANPOWER = 0.50 -- 0.60 vanilla
NDefines.NNomad.STARTING_HORDE_MAX_FRACTION = 0.30 -- 0.80 vanilla
NDefines.NNomad.CLAN_GRAZING_LAND_MALUS = 150 -- 75 vanilla
NDefines.NNomad.HORDE_REINFORCE_MULTIPLIER = 6 -- 4 vanilla
NDefines.NNomad.MIN_STARTING_HORDE_SUBUNITS = 0 -- 2 vanilla
NDefines.NCharacter.MAX_WARDS_PER_GUARDIAN = 4
NDefines.NEconomy.DOGE_SUCC_RANDOM_FACTOR = 0									-- 500 The random Respect factor on actual Doge succession.
NDefines.NEconomy.PATRICIAN_CAMPAIGN_FUND_FACTOR = 2.5									-- 5 The effect of money in the Campaign Fund on Doge elections (money * factor).
NDefines.NEconomy.PATRICIAN_PRESTIGE_RESPECT_FACTOR = 5									-- 2 The effect of Prestige on the Respect value for Doge elections (prestige * factor).
NDefines.NEconomy.PATRICIAN_AGE_RESPECT_FACTOR = 0.125									-- 1 The effect of Age on the Respect value for Doge elections (age * age * factor).
NDefines.NMilitary.MAX_LEADERSHIP_TRAITS = 4

NDefines.NDiplomacy.PRESTIGE_OPINION_MAX = 10									-- Max opinion impact of prestige (positive OR negative)
NDefines.NDiplomacy.PIETY_OPINION_MAX = 20										-- Max opinion impact of piety (positive OR negative)
NDefines.NDiplomacy.PRESTIGE_OPINION_DIV = 200
NDefines.NDiplomacy.PIETY_OPINION_DIV = 100
NDefines.NTitle.EMPEROR_TITLE_PRESTIGE = 4.8

NDefines.NTitle.BARON_TITLE_PRESTIGE = 0.25
NDefines.NTitle.COUNT_TITLE_PRESTIGE = 1
NDefines.NTitle.DUKE_TITLE_PRESTIGE = 1
NDefines.NTitle.KING_TITLE_PRESTIGE = 1

NDefines.NTitle.BARON_AS_VASSAL_PRESTIGE = 0.25
NDefines.NTitle.COUNT_AS_VASSAL_PRESTIGE = 1
NDefines.NTitle.DUKE_AS_VASSAL_PRESTIGE = 1
NDefines.NTitle.KING_AS_VASSAL_PRESTIGE = 1
NDefines.NTitle.EMPEROR_AS_VASSAL_PRESTIGE = 3.2

NDefines.NDiplomacy.MAX_DUCHIES_LEGALLY_HELD = 3             -- from 2, vanilla=2
NDefines.NDiplomacy.MAX_ELECTOR_TITLES_LEGALLY_HELD = 3      -- from 1, vanilla=1
NDefines.NDiplomacy.LAW_CHANGE_PRESTIGE_COST = 150
NDefines.NDiplomacy.CROWN_LAW_CHANGE_PRESTIGE_COST = 300

NDefines.NDiplomacy.DUKE_POWERFUL_VASSAL_COUNT = 3
NDefines.NDiplomacy.KING_POWERFUL_VASSAL_COUNT = 4
NDefines.NDiplomacy.EMPEROR_POWERFUL_VASSAL_COUNT = 5

NDefines.NTitle.NORMAL_LAW_CHANGE_COUNCIL_MONTHS = 48 -- from 60
NDefines.NTitle.NORMAL_LAW_CHANGE_ABSOLUTISM_MONTHS = 120
NDefines.NTitle.CROWN_LAW_CHANGE_MONTHS = 180
NDefines.NTitle.CROWN_LAW_CHANGE_TIMER = 1  -- EMF crown laws assume that you will be able to change a CA sub-law after raising CA with same ruler

NDefines.NCharacter.CHANGE_SUCC_LAW_YEARS = 10


NDefines.NDiplomacy.IMPRISON_CHARACTER_INTERACTION_MONEY = 0
NDefines.NDiplomacy.IMPRISON_CHARACTER_INTERACTION_PIETY = 20
NDefines.NDiplomacy.IMPRISON_CHARACTER_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.IMPRISON_CHARACTER_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.IMPRISON_CHARACTER_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.IMPRISON_CHARACTER_INTERACTION_MUST_HAVE_COST = 0				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.IMPRISON_CHARACTER_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.RELEASE_FROM_PRISON_INTERACTION_MONEY = 0
NDefines.NDiplomacy.RELEASE_FROM_PRISON_INTERACTION_PIETY = 5
NDefines.NDiplomacy.RELEASE_FROM_PRISON_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.RELEASE_FROM_PRISON_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.RELEASE_FROM_PRISON_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.RELEASE_FROM_PRISON_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.RELEASE_FROM_PRISON_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.EXECUTE_IMPRISONED_INTERACTION_MONEY = 0
NDefines.NDiplomacy.EXECUTE_IMPRISONED_INTERACTION_PIETY = 10
NDefines.NDiplomacy.EXECUTE_IMPRISONED_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.EXECUTE_IMPRISONED_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.EXECUTE_IMPRISONED_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.EXECUTE_IMPRISONED_INTERACTION_MUST_HAVE_COST = 0				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.EXECUTE_IMPRISONED_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.EXILE_IMPRISONED_INTERACTION_MONEY = 0
NDefines.NDiplomacy.EXILE_IMPRISONED_INTERACTION_PIETY = 15
NDefines.NDiplomacy.EXILE_IMPRISONED_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.EXILE_IMPRISONED_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.EXILE_IMPRISONED_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.EXILE_IMPRISONED_INTERACTION_MUST_HAVE_COST = 0				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.EXILE_IMPRISONED_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.RETIRE_TO_MONASTERY_INTERACTION_MONEY = 0
NDefines.NDiplomacy.RETIRE_TO_MONASTERY_INTERACTION_PIETY = 5
NDefines.NDiplomacy.RETIRE_TO_MONASTERY_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.RETIRE_TO_MONASTERY_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.RETIRE_TO_MONASTERY_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.RETIRE_TO_MONASTERY_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.RETIRE_TO_MONASTERY_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.DEMAND_RELIGIOUS_CONVERSION_INTERACTION_MONEY = 0
NDefines.NDiplomacy.DEMAND_RELIGIOUS_CONVERSION_INTERACTION_PIETY = 5
NDefines.NDiplomacy.DEMAND_RELIGIOUS_CONVERSION_INTERACTION_PRESTIGE = 5
NDefines.NDiplomacy.DEMAND_RELIGIOUS_CONVERSION_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.DEMAND_RELIGIOUS_CONVERSION_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.INVITE_TO_COURT_INTERACTION_MONEY = 0
NDefines.NDiplomacy.INVITE_TO_COURT_INTERACTION_PIETY = 0
NDefines.NDiplomacy.INVITE_TO_COURT_INTERACTION_PRESTIGE = 50
NDefines.NDiplomacy.INVITE_TO_COURT_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.INVITE_TO_COURT_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.INVITE_TO_COURT_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.INVITE_TO_COURT_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.TRANSFER_VASSAL_INTERACTION_MONEY = 0
NDefines.NDiplomacy.TRANSFER_VASSAL_INTERACTION_PIETY = 15
NDefines.NDiplomacy.TRANSFER_VASSAL_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.TRANSFER_VASSAL_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.TRANSFER_VASSAL_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.TRANSFER_VASSAL_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.TRANSFER_VASSAL_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.CLAIM_TITLE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.CLAIM_TITLE_INTERACTION_PIETY = 0
NDefines.NDiplomacy.CLAIM_TITLE_INTERACTION_PRESTIGE = 100
NDefines.NDiplomacy.CLAIM_TITLE_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.CLAIM_TITLE_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.CLAIM_TITLE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.CLAIM_TITLE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.REVOKE_TITLE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.REVOKE_TITLE_INTERACTION_PIETY = 5
NDefines.NDiplomacy.REVOKE_TITLE_INTERACTION_PRESTIGE = 10
NDefines.NDiplomacy.REVOKE_TITLE_INTERACTION_THRESHOLD_FOR_NO = 25
NDefines.NDiplomacy.REVOKE_TITLE_INTERACTION_THRESHOLD_FOR_YES = 75
NDefines.NDiplomacy.REVOKE_TITLE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.REVOKE_TITLE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.AWARD_HONORARY_TITLE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.AWARD_HONORARY_TITLE_INTERACTION_PIETY = 20
NDefines.NDiplomacy.AWARD_HONORARY_TITLE_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.AWARD_HONORARY_TITLE_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.AWARD_HONORARY_TITLE_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.AWARD_HONORARY_TITLE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.AWARD_HONORARY_TITLE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.REVOKE_HONORARY_TITLE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.REVOKE_HONORARY_TITLE_INTERACTION_PIETY = 5
NDefines.NDiplomacy.REVOKE_HONORARY_TITLE_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.REVOKE_HONORARY_TITLE_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.REVOKE_HONORARY_TITLE_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.REVOKE_HONORARY_TITLE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.REVOKE_HONORARY_TITLE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.SEND_ASSASSIN_INTERACTION_MONEY = 50
NDefines.NDiplomacy.SEND_ASSASSIN_INTERACTION_PIETY = 0
NDefines.NDiplomacy.SEND_ASSASSIN_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.SEND_ASSASSIN_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.SEND_ASSASSIN_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.SEND_ASSASSIN_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.SEND_ASSASSIN_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.DECLARE_WAR_INTERACTION_MONEY = 0
NDefines.NDiplomacy.DECLARE_WAR_INTERACTION_PIETY = 0
NDefines.NDiplomacy.DECLARE_WAR_INTERACTION_PRESTIGE = 100
NDefines.NDiplomacy.DECLARE_WAR_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.DECLARE_WAR_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.DECLARE_WAR_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.DECLARE_WAR_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.OFFER_PEACE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.OFFER_PEACE_INTERACTION_PIETY = 0
NDefines.NDiplomacy.OFFER_PEACE_INTERACTION_PRESTIGE = 1
NDefines.NDiplomacy.OFFER_PEACE_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.OFFER_PEACE_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.OFFER_PEACE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.OFFER_PEACE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.SEND_GIFT_INTERACTION_MONEY = 25
NDefines.NDiplomacy.SEND_GIFT_INTERACTION_PIETY = 5
NDefines.NDiplomacy.SEND_GIFT_INTERACTION_PRESTIGE = 10
NDefines.NDiplomacy.SEND_GIFT_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.SEND_GIFT_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.SEND_GIFT_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.SEND_GIFT_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.OFFER_VASSALIZATION_INTERACTION_MONEY = 0
NDefines.NDiplomacy.OFFER_VASSALIZATION_INTERACTION_PIETY = 0
NDefines.NDiplomacy.OFFER_VASSALIZATION_INTERACTION_PRESTIGE = 100
NDefines.NDiplomacy.OFFER_VASSALIZATION_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.OFFER_VASSALIZATION_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.OFFER_VASSALIZATION_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.OFFER_VASSALIZATION_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ASK_FOR_VASSALIZATION_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ASK_FOR_VASSALIZATION_INTERACTION_PIETY = 0
NDefines.NDiplomacy.ASK_FOR_VASSALIZATION_INTERACTION_PRESTIGE = 100
NDefines.NDiplomacy.ASK_FOR_VASSALIZATION_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.ASK_FOR_VASSALIZATION_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.ASK_FOR_VASSALIZATION_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ASK_FOR_VASSALIZATION_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ARRANGE_BETROTHAL_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ARRANGE_BETROTHAL_INTERACTION_PIETY = 5
NDefines.NDiplomacy.ARRANGE_BETROTHAL_INTERACTION_PRESTIGE = 10
NDefines.NDiplomacy.ARRANGE_BETROTHAL_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.ARRANGE_BETROTHAL_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.ARRANGE_BETROTHAL_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ARRANGE_BETROTHAL_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.BREAK_BETROTHAL_INTERACTION_MONEY = 0
NDefines.NDiplomacy.BREAK_BETROTHAL_INTERACTION_PIETY = 15
NDefines.NDiplomacy.BREAK_BETROTHAL_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.BREAK_BETROTHAL_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.BREAK_BETROTHAL_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.BREAK_BETROTHAL_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.BREAK_BETROTHAL_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.OFFER_SUCCESSION_MARRIGE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.OFFER_SUCCESSION_MARRIGE_INTERACTION_PIETY = 5
NDefines.NDiplomacy.OFFER_SUCCESSION_MARRIGE_INTERACTION_PRESTIGE = 10
NDefines.NDiplomacy.OFFER_SUCCESSION_MARRIGE_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.OFFER_SUCCESSION_MARRIGE_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.OFFER_SUCCESSION_MARRIGE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.OFFER_SUCCESSION_MARRIGE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.OFFER_MARRIGE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.OFFER_MARRIGE_INTERACTION_PIETY = 5
NDefines.NDiplomacy.OFFER_MARRIGE_INTERACTION_PRESTIGE = 10
NDefines.NDiplomacy.OFFER_MARRIGE_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.OFFER_MARRIGE_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.OFFER_MARRIGE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.OFFER_MARRIGE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.RANSOM_CHARACTER_INTERACTION_MONEY = 0
NDefines.NDiplomacy.RANSOM_CHARACTER_INTERACTION_PIETY = 5
NDefines.NDiplomacy.RANSOM_CHARACTER_INTERACTION_PRESTIGE = 10
NDefines.NDiplomacy.RANSOM_CHARACTER_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.RANSOM_CHARACTER_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.RANSOM_CHARACTER_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.RANSOM_CHARACTER_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.EDUCATE_CHARACTER_INTERACTION_MONEY = 0
NDefines.NDiplomacy.EDUCATE_CHARACTER_INTERACTION_PIETY = 10
NDefines.NDiplomacy.EDUCATE_CHARACTER_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.EDUCATE_CHARACTER_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.EDUCATE_CHARACTER_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.EDUCATE_CHARACTER_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.EDUCATE_CHARACTER_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ABANDON_AMBITION_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ABANDON_AMBITION_INTERACTION_PIETY = 15
NDefines.NDiplomacy.ABANDON_AMBITION_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.ABANDON_AMBITION_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.ABANDON_AMBITION_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.ABANDON_AMBITION_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ABANDON_AMBITION_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.STOP_BACKING_AMBITION_INTERACTION_MONEY = 0
NDefines.NDiplomacy.STOP_BACKING_AMBITION_INTERACTION_PIETY = 15
NDefines.NDiplomacy.STOP_BACKING_AMBITION_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.STOP_BACKING_AMBITION_INTERACTION_THRESHOLD_FOR_NO = 25
NDefines.NDiplomacy.STOP_BACKING_AMBITION_INTERACTION_THRESHOLD_FOR_YES = 75
NDefines.NDiplomacy.STOP_BACKING_AMBITION_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.STOP_BACKING_AMBITION_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.JOIN_AMBITION_INTERACTION_MONEY = 0
NDefines.NDiplomacy.JOIN_AMBITION_INTERACTION_PIETY = 15
NDefines.NDiplomacy.JOIN_AMBITION_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.JOIN_AMBITION_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.JOIN_AMBITION_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.JOIN_AMBITION_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.JOIN_AMBITION_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.GRANT_LANDED_TITLE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.GRANT_LANDED_TITLE_INTERACTION_PIETY = 5
NDefines.NDiplomacy.GRANT_LANDED_TITLE_INTERACTION_PRESTIGE = 5
NDefines.NDiplomacy.GRANT_LANDED_TITLE_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.GRANT_LANDED_TITLE_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.GRANT_LANDED_TITLE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.GRANT_LANDED_TITLE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.APPOINT_TO_OFFICE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.APPOINT_TO_OFFICE_INTERACTION_PIETY = 30
NDefines.NDiplomacy.APPOINT_TO_OFFICE_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.APPOINT_TO_OFFICE_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.APPOINT_TO_OFFICE_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.APPOINT_TO_OFFICE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.APPOINT_TO_OFFICE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.RESIGN_FROM_OFFICE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.RESIGN_FROM_OFFICE_INTERACTION_PIETY = 5
NDefines.NDiplomacy.RESIGN_FROM_OFFICE_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.RESIGN_FROM_OFFICE_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.RESIGN_FROM_OFFICE_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.RESIGN_FROM_OFFICE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.RESIGN_FROM_OFFICE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.APPOINT_COMMANDER_INTERACTION_MONEY = 0
NDefines.NDiplomacy.APPOINT_COMMANDER_INTERACTION_PIETY = 5
NDefines.NDiplomacy.APPOINT_COMMANDER_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.APPOINT_COMMANDER_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.APPOINT_COMMANDER_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.APPOINT_COMMANDER_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.APPOINT_COMMANDER_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.RESIGN_COMMANDER_INTERACTION_MONEY = 0
NDefines.NDiplomacy.RESIGN_COMMANDER_INTERACTION_PIETY = 5
NDefines.NDiplomacy.RESIGN_COMMANDER_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.RESIGN_COMMANDER_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.RESIGN_COMMANDER_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.RESIGN_COMMANDER_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.RESIGN_COMMANDER_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.RESIGN_AS_COMMANDER_INTERACTION_MONEY = 0
NDefines.NDiplomacy.RESIGN_AS_COMMANDER_INTERACTION_PIETY = 5
NDefines.NDiplomacy.RESIGN_AS_COMMANDER_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.RESIGN_AS_COMMANDER_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.RESIGN_AS_COMMANDER_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.RESIGN_AS_COMMANDER_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.RESIGN_AS_COMMANDER_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ASK_FOR_INVASION_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ASK_FOR_INVASION_INTERACTION_PIETY = 25
NDefines.NDiplomacy.ASK_FOR_INVASION_INTERACTION_PRESTIGE = 100
NDefines.NDiplomacy.ASK_FOR_INVASION_INTERACTION_THRESHOLD_FOR_NO = 50
NDefines.NDiplomacy.ASK_FOR_INVASION_INTERACTION_THRESHOLD_FOR_YES = 150
NDefines.NDiplomacy.ASK_FOR_INVASION_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ASK_FOR_INVASION_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ASK_FOR_DIVORCE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ASK_FOR_DIVORCE_INTERACTION_PIETY = 25
NDefines.NDiplomacy.ASK_FOR_DIVORCE_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.ASK_FOR_DIVORCE_INTERACTION_THRESHOLD_FOR_NO = 35
NDefines.NDiplomacy.ASK_FOR_DIVORCE_INTERACTION_THRESHOLD_FOR_YES = 75
NDefines.NDiplomacy.ASK_FOR_DIVORCE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ASK_FOR_DIVORCE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.DIVORCE_INTERACTION_MONEY = 1.0 										-- Multiplier of yearly income
NDefines.NDiplomacy.DIVORCE_INTERACTION_PIETY = 15
NDefines.NDiplomacy.DIVORCE_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.DIVORCE_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.DIVORCE_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.DIVORCE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.DIVORCE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ASK_FOR_EXCOMMUNICATION_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ASK_FOR_EXCOMMUNICATION_INTERACTION_PIETY = 15
NDefines.NDiplomacy.ASK_FOR_EXCOMMUNICATION_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.ASK_FOR_EXCOMMUNICATION_INTERACTION_THRESHOLD_FOR_NO = 60
NDefines.NDiplomacy.ASK_FOR_EXCOMMUNICATION_INTERACTION_THRESHOLD_FOR_YES = 150
NDefines.NDiplomacy.ASK_FOR_EXCOMMUNICATION_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ASK_FOR_EXCOMMUNICATION_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.CALL_ALLY_INTERACTION_MONEY = 0
NDefines.NDiplomacy.CALL_ALLY_INTERACTION_PIETY = 0
NDefines.NDiplomacy.CALL_ALLY_INTERACTION_PRESTIGE = 60
NDefines.NDiplomacy.CALL_ALLY_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.CALL_ALLY_INTERACTION_THRESHOLD_FOR_YES = 75
NDefines.NDiplomacy.CALL_ALLY_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.CALL_ALLY_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_PIETY = 25
NDefines.NDiplomacy.ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_THRESHOLD_FOR_NO = 50
NDefines.NDiplomacy.ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_THRESHOLD_FOR_YES = 150
NDefines.NDiplomacy.ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ASK_TO_LIFT_EXCOMMUNICATION_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ASK_TO_RANSOM_CHARACTER_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ASK_TO_RANSOM_CHARACTER_INTERACTION_PIETY = 0
NDefines.NDiplomacy.ASK_TO_RANSOM_CHARACTER_INTERACTION_PRESTIGE = 30
NDefines.NDiplomacy.ASK_TO_RANSOM_CHARACTER_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.ASK_TO_RANSOM_CHARACTER_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.ASK_TO_RANSOM_CHARACTER_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ASK_TO_RANSOM_CHARACTER_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ASK_TO_JOIN_WAR_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ASK_TO_JOIN_WAR_INTERACTION_PIETY = 0
NDefines.NDiplomacy.ASK_TO_JOIN_WAR_INTERACTION_PRESTIGE = 40
NDefines.NDiplomacy.ASK_TO_JOIN_WAR_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.ASK_TO_JOIN_WAR_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.ASK_TO_JOIN_WAR_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ASK_TO_JOIN_WAR_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.RELEASE_VASSAL_INTERACTION_MONEY = 0
NDefines.NDiplomacy.RELEASE_VASSAL_INTERACTION_PIETY = 20
NDefines.NDiplomacy.RELEASE_VASSAL_INTERACTION_PRESTIGE = 40
NDefines.NDiplomacy.RELEASE_VASSAL_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.RELEASE_VASSAL_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.RELEASE_VASSAL_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.RELEASE_VASSAL_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ASK_TO_EMBARGO_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ASK_TO_EMBARGO_INTERACTION_PIETY = 0
NDefines.NDiplomacy.ASK_TO_EMBARGO_INTERACTION_PRESTIGE = 40
NDefines.NDiplomacy.ASK_TO_EMBARGO_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.ASK_TO_EMBARGO_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.ASK_TO_EMBARGO_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ASK_TO_EMBARGO_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.PREPARE_INVASION_INTERACTION_MONEY = 0
NDefines.NDiplomacy.PREPARE_INVASION_INTERACTION_PIETY = 0
NDefines.NDiplomacy.PREPARE_INVASION_INTERACTION_PRESTIGE = 500
NDefines.NDiplomacy.PREPARE_INVASION_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.PREPARE_INVASION_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.PREPARE_INVASION_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.PREPARE_INVASION_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.MAKE_CONSORT_INTERACTION_MONEY = 0
NDefines.NDiplomacy.MAKE_CONSORT_INTERACTION_PIETY = 10
NDefines.NDiplomacy.MAKE_CONSORT_INTERACTION_PRESTIGE = 20
NDefines.NDiplomacy.MAKE_CONSORT_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.MAKE_CONSORT_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.MAKE_CONSORT_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.MAKE_CONSORT_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.DISMISS_CONSORT_INTERACTION_MONEY = 0
NDefines.NDiplomacy.DISMISS_CONSORT_INTERACTION_PIETY = 15
NDefines.NDiplomacy.DISMISS_CONSORT_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.DISMISS_CONSORT_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.DISMISS_CONSORT_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.DISMISS_CONSORT_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.DISMISS_CONSORT_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.RETRACT_VASSAL_INTERACTION_MONEY = 0
NDefines.NDiplomacy.RETRACT_VASSAL_INTERACTION_PIETY = 25
NDefines.NDiplomacy.RETRACT_VASSAL_INTERACTION_PRESTIGE = 100
NDefines.NDiplomacy.RETRACT_VASSAL_INTERACTION_THRESHOLD_FOR_NO = 25
NDefines.NDiplomacy.RETRACT_VASSAL_INTERACTION_THRESHOLD_FOR_YES = 75
NDefines.NDiplomacy.RETRACT_VASSAL_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.RETRACT_VASSAL_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ASK_FOR_MONEY_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ASK_FOR_MONEY_INTERACTION_PIETY = 25
NDefines.NDiplomacy.ASK_FOR_MONEY_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.ASK_FOR_MONEY_INTERACTION_THRESHOLD_FOR_NO = 50
NDefines.NDiplomacy.ASK_FOR_MONEY_INTERACTION_THRESHOLD_FOR_YES = 150
NDefines.NDiplomacy.ASK_FOR_MONEY_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ASK_FOR_MONEY_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ASK_FOR_CLAIM_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ASK_FOR_CLAIM_INTERACTION_PIETY = 25
NDefines.NDiplomacy.ASK_FOR_CLAIM_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.ASK_FOR_CLAIM_INTERACTION_THRESHOLD_FOR_NO = 50
NDefines.NDiplomacy.ASK_FOR_CLAIM_INTERACTION_THRESHOLD_FOR_YES = 150
NDefines.NDiplomacy.ASK_FOR_CLAIM_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ASK_FOR_CLAIM_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ASK_FOR_CRUSADE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ASK_FOR_CRUSADE_INTERACTION_PIETY = 100
NDefines.NDiplomacy.ASK_FOR_CRUSADE_INTERACTION_PRESTIGE = 200
NDefines.NDiplomacy.ASK_FOR_CRUSADE_INTERACTION_THRESHOLD_FOR_NO = 50
NDefines.NDiplomacy.ASK_FOR_CRUSADE_INTERACTION_THRESHOLD_FOR_YES = 150
NDefines.NDiplomacy.ASK_FOR_CRUSADE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ASK_FOR_CRUSADE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.NOMINATE_BISHOP_TO_POPE_INTERACTION_MONEY = 50
NDefines.NDiplomacy.NOMINATE_BISHOP_TO_POPE_INTERACTION_PIETY = 15
NDefines.NDiplomacy.NOMINATE_BISHOP_TO_POPE_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.NOMINATE_BISHOP_TO_POPE_INTERACTION_THRESHOLD_FOR_NO = 50
NDefines.NDiplomacy.NOMINATE_BISHOP_TO_POPE_INTERACTION_THRESHOLD_FOR_YES = 150
NDefines.NDiplomacy.NOMINATE_BISHOP_TO_POPE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.NOMINATE_BISHOP_TO_POPE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.ABSORB_CLAN_INTERACTION_MONEY = 0
NDefines.NDiplomacy.ABSORB_CLAN_INTERACTION_PIETY = 25
NDefines.NDiplomacy.ABSORB_CLAN_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.ABSORB_CLAN_INTERACTION_THRESHOLD_FOR_NO = 50
NDefines.NDiplomacy.ABSORB_CLAN_INTERACTION_THRESHOLD_FOR_YES = 150
NDefines.NDiplomacy.ABSORB_CLAN_INTERACTION_MUST_HAVE_COST = 1					-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.ABSORB_CLAN_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.SPLIT_CLAN_INTERACTION_MONEY = 0
NDefines.NDiplomacy.SPLIT_CLAN_INTERACTION_PIETY = 25
NDefines.NDiplomacy.SPLIT_CLAN_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.SPLIT_CLAN_INTERACTION_THRESHOLD_FOR_NO = 50
NDefines.NDiplomacy.SPLIT_CLAN_INTERACTION_THRESHOLD_FOR_YES = 125
NDefines.NDiplomacy.SPLIT_CLAN_INTERACTION_MUST_HAVE_COST = 1					-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.SPLIT_CLAN_INTERACTION_ENABLED = 1							-- Should this action be used at all?

NDefines.NDiplomacy.FORM_BLOOD_OATH_INTERACTION_MONEY = 0
NDefines.NDiplomacy.FORM_BLOOD_OATH_INTERACTION_PIETY = 15
NDefines.NDiplomacy.FORM_BLOOD_OATH_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.FORM_BLOOD_OATH_INTERACTION_THRESHOLD_FOR_NO = 25
NDefines.NDiplomacy.FORM_BLOOD_OATH_INTERACTION_THRESHOLD_FOR_YES = 50
NDefines.NDiplomacy.FORM_BLOOD_OATH_INTERACTION_MUST_HAVE_COST = 1					-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.FORM_BLOOD_OATH_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.SETTLE_FEUD_INTERACTION_MONEY = 0
NDefines.NDiplomacy.SETTLE_FEUD_INTERACTION_PIETY = 15
NDefines.NDiplomacy.SETTLE_FEUD_INTERACTION_PRESTIGE = 50
NDefines.NDiplomacy.SETTLE_FEUD_INTERACTION_THRESHOLD_FOR_NO = 25
NDefines.NDiplomacy.SETTLE_FEUD_INTERACTION_THRESHOLD_FOR_YES = 50
NDefines.NDiplomacy.SETTLE_FEUD_INTERACTION_MUST_HAVE_COST = 1					-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.SETTLE_FEUD_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.FORM_ALLIANCE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.FORM_ALLIANCE_INTERACTION_PIETY = 10
NDefines.NDiplomacy.FORM_ALLIANCE_INTERACTION_PRESTIGE = 20
NDefines.NDiplomacy.FORM_ALLIANCE_INTERACTION_THRESHOLD_FOR_NO = 25
NDefines.NDiplomacy.FORM_ALLIANCE_INTERACTION_THRESHOLD_FOR_YES = 25
NDefines.NDiplomacy.FORM_ALLIANCE_INTERACTION_MUST_HAVE_COST = 1					-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.FORM_ALLIANCE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.DISSOLVE_ALLIANCE_INTERACTION_MONEY = 0
NDefines.NDiplomacy.DISSOLVE_ALLIANCE_INTERACTION_PIETY = 1
NDefines.NDiplomacy.DISSOLVE_ALLIANCE_INTERACTION_PRESTIGE = 20
NDefines.NDiplomacy.DISSOLVE_ALLIANCE_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.DISSOLVE_ALLIANCE_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.DISSOLVE_ALLIANCE_INTERACTION_MUST_HAVE_COST = 1				-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.DISSOLVE_ALLIANCE_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.START_COALITION_INTERACTION_MONEY = 0
NDefines.NDiplomacy.START_COALITION_INTERACTION_PIETY = 0
NDefines.NDiplomacy.START_COALITION_INTERACTION_PRESTIGE = 50
NDefines.NDiplomacy.START_COALITION_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.START_COALITION_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.START_COALITION_INTERACTION_MUST_HAVE_COST = 0					-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.START_COALITION_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.LEAVE_COALITION_INTERACTION_MONEY = 0
NDefines.NDiplomacy.LEAVE_COALITION_INTERACTION_PIETY = 0
NDefines.NDiplomacy.LEAVE_COALITION_INTERACTION_PRESTIGE = 50
NDefines.NDiplomacy.LEAVE_COALITION_INTERACTION_THRESHOLD_FOR_NO = 0
NDefines.NDiplomacy.LEAVE_COALITION_INTERACTION_THRESHOLD_FOR_YES = 0
NDefines.NDiplomacy.LEAVE_COALITION_INTERACTION_MUST_HAVE_COST = 0					-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.LEAVE_COALITION_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.BUY_FAVOR_INTERACTION_MONEY = 0
NDefines.NDiplomacy.BUY_FAVOR_INTERACTION_PIETY = 25
NDefines.NDiplomacy.BUY_FAVOR_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.BUY_FAVOR_INTERACTION_THRESHOLD_FOR_NO = 25
NDefines.NDiplomacy.BUY_FAVOR_INTERACTION_THRESHOLD_FOR_YES = 25
NDefines.NDiplomacy.BUY_FAVOR_INTERACTION_MUST_HAVE_COST = 0					-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.BUY_FAVOR_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.REQUEST_SUPPORT_INTERACTION_MONEY = 0
NDefines.NDiplomacy.REQUEST_SUPPORT_INTERACTION_PIETY = 25
NDefines.NDiplomacy.REQUEST_SUPPORT_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.REQUEST_SUPPORT_INTERACTION_THRESHOLD_FOR_NO = 25
NDefines.NDiplomacy.REQUEST_SUPPORT_INTERACTION_THRESHOLD_FOR_YES = 25
NDefines.NDiplomacy.REQUEST_SUPPORT_INTERACTION_MUST_HAVE_COST = 0					-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.REQUEST_SUPPORT_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.CALL_IN_FAVOR_INTERACTION_MONEY = 0
NDefines.NDiplomacy.CALL_IN_FAVOR_INTERACTION_PIETY = 25
NDefines.NDiplomacy.CALL_IN_FAVOR_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.CALL_IN_FAVOR_INTERACTION_THRESHOLD_FOR_NO = 25
NDefines.NDiplomacy.CALL_IN_FAVOR_INTERACTION_THRESHOLD_FOR_YES = 25
NDefines.NDiplomacy.CALL_IN_FAVOR_INTERACTION_MUST_HAVE_COST = 0					-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.CALL_IN_FAVOR_INTERACTION_ENABLED = 1						-- Should this action be used at all?

NDefines.NDiplomacy.FORM_NON_AGGRESSION_PACT_INTERACTION_MONEY = 0
NDefines.NDiplomacy.FORM_NON_AGGRESSION_PACT_INTERACTION_PIETY = 10
NDefines.NDiplomacy.FORM_NON_AGGRESSION_PACT_INTERACTION_PRESTIGE = 20
NDefines.NDiplomacy.FORM_NON_AGGRESSION_PACT_INTERACTION_THRESHOLD_FOR_NO = 25
NDefines.NDiplomacy.FORM_NON_AGGRESSION_PACT_INTERACTION_THRESHOLD_FOR_YES = 25
NDefines.NDiplomacy.FORM_NON_AGGRESSION_PACT_INTERACTION_MUST_HAVE_COST = 0		-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.FORM_NON_AGGRESSION_PACT_INTERACTION_ENABLED = 1				-- Should this action be used at all?

NDefines.NDiplomacy.FORCE_JOIN_FACTION_INTERACTION_MONEY = 0
NDefines.NDiplomacy.FORCE_JOIN_FACTION_INTERACTION_PIETY = 20
NDefines.NDiplomacy.FORCE_JOIN_FACTION_INTERACTION_PRESTIGE = 0
NDefines.NDiplomacy.FORCE_JOIN_FACTION_INTERACTION_THRESHOLD_FOR_NO = 0	-- useless since this is an auto accepted interaction.
NDefines.NDiplomacy.FORCE_JOIN_FACTION_INTERACTION_THRESHOLD_FOR_YES = 0   -- useless since this is an auto accepted interaction.
NDefines.NDiplomacy.FORCE_JOIN_FACTION_INTERACTION_MUST_HAVE_COST = 0		-- Is having prestige/piety >= cost required for this action?
NDefines.NDiplomacy.FORCE_JOIN_FACTION_INTERACTION_ENABLED = 1				-- Should this action be used at all?

NDefines.NDiplomacy.LAW_CHANGE_PIETY_COST_ABSOLUTISM = 250					-- Piety cost for Iqta government when changing normal demesne laws with no council
NDefines.NDiplomacy.CROWN_LAW_CHANGE_PIETY_COST_ABSOLUTISM = 500			-- Piety cost for Iqta government when changing Crown laws with no council
NDefines.NDiplomacy.LAW_CHANGE_PRESTIGE_COST_ABSOLUTISM = 250				-- Prestige cost for Nomadic government when changing normal demesne laws with no council
NDefines.NDiplomacy.CROWN_LAW_CHANGE_PRESTIGE_COST_ABSOLUTISM = 500		-- Prestige cost for Nomadic government when changing Crown laws with no council

NDefines.NDiplomacy.LAW_CHANGE_PIETY_COST = 125									-- Piety cost for Iqta government when changing normal demesne laws
NDefines.NDiplomacy.CROWN_LAW_CHANGE_PIETY_COST = 250							-- Piety cost for Iqta government when changing Crown laws
NDefines.NDiplomacy.LAW_CHANGE_PRESTIGE_COST = 125								-- Prestige cost for Nomadic government when changing normal demesne laws
NDefines.NDiplomacy.CROWN_LAW_CHANGE_PRESTIGE_COST = 250						-- Prestige cost for Nomadic government when changing Crown laws

NDefines.NEngine.EVENT_PROCESS_OFFSET = 40
NDefines.NEngine.COURTIER_EVENT_PROCESS_OFFSET = 200
NDefines.NEngine.COURTIERS_MTTTH_EVENTS = 1
NDefines.NEngine.MISSING_SCRIPTED_SUCCESSOR_ERROR_CUTOFF_YEAR = 1066
NDefines.NEngine.MISSING_SCRIPTED_SUCCESSOR_ERROR_CUTOFF_MONTH = 8
NDefines.NEngine.MISSING_SCRIPTED_SUCCESSOR_ERROR_CUTOFF_DAY = 16
NDefines.NEngine.COURT_PRUNE_SIZE = 1
NDefines.NEngine.PRUNE_MINIMAL_AGE = 1
NDefines.NEngine.HEALTH_IMMUNITY_TO_PRUNING = 5

NDefines.NNomad.PROVINCES_PER_CLAN = 1							-- Used to calculate if you have too many clans
NDefines.NNomad.MIN_CLAN_LAND_PROPORTION = 0.8				-- Used to calculate when the clans get angry over you holding too much land
NDefines.NNomad.MIN_CLAN_SIZE_MULTIPLIER = 0.8					-- Used to calculate the minimum clan size from the desired clan size at game start (this is only used by the AI, and for setting up the game)
NDefines.NNomad.MAX_CLANS = 9									-- The maximum amount of clans, regardless of realm size
NDefines.NNomad.TOO_MUCH_COMPETITION = 15						-- Opinion malus if you have too many clans
NDefines.NNomad.CLANS_WANT_MORE_LAND = 20					-- Opinion malus per province too many held
NDefines.NNomad.MAX_HOLDINGS_IN_NOMADIC_PROVINCE = 4			-- Counties with this number of holdings or less are counted as a nomadic province that clans can demand
