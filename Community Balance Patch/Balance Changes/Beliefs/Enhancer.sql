-- Religious Texts

UPDATE Beliefs
SET SpyPressure = '8'
WHERE Type = 'BELIEF_RELIGIOUS_TEXTS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET SpreadStrengthModifier = '0'
WHERE Type = 'BELIEF_RELIGIOUS_TEXTS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET InquisitorCostModifier = '-25'
WHERE Type = 'BELIEF_RELIGIOUS_TEXTS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET HappinessFromForeignSpies = '2'
WHERE Type = 'BELIEF_RELIGIOUS_TEXTS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

INSERT INTO Belief_YieldFromRemoveHeresy
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_RELIGIOUS_TEXTS', 'YIELD_GOLD', 500);

-- Reliquary (Now Tithes)
UPDATE Beliefs
SET GreatPersonExpendedFaith = '0'
WHERE Type = 'BELIEF_RELIQUARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET GoldPerFirstCityConversion = '0'
WHERE Type = 'BELIEF_RELIQUARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

INSERT INTO Belief_CityYieldChanges
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_RELIQUARY', 'YIELD_CULTURE', 2),
	('BELIEF_RELIQUARY', 'YIELD_FAITH', 2);

INSERT INTO Belief_TradeRouteYieldChange
	(BeliefType, DomainType, YieldType, Yield)
VALUES
	('BELIEF_RELIQUARY', 'DOMAIN_LAND', 'YIELD_FOOD', 2),
	('BELIEF_RELIQUARY', 'DOMAIN_LAND', 'YIELD_PRODUCTION', 2),
	('BELIEF_RELIQUARY', 'DOMAIN_SEA', 'YIELD_FOOD', 2),
	('BELIEF_RELIQUARY', 'DOMAIN_SEA', 'YIELD_PRODUCTION', 2);

-- Just War (Now Martyrdom)
UPDATE Beliefs
SET CombatModifierEnemyCities = '0'
WHERE Type = 'BELIEF_JUST_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET GreatPersonExpendedFaith = '0'
WHERE Type = 'BELIEF_JUST_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET GreatPersonExpendedFaith = '0'
WHERE Type = 'BELIEF_JUST_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET OtherReligionPressureErosion = '50'
WHERE Type = 'BELIEF_JUST_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Heathen Conversion (Now Holy Warriors)
UPDATE Beliefs
SET Enhancer = '1'
WHERE Type = 'BELIEF_HEATHEN_CONVERSION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET ConvertsBarbarians = '0'
WHERE Type = 'BELIEF_HEATHEN_CONVERSION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Reformation = '0'
WHERE Type = 'BELIEF_HEATHEN_CONVERSION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

INSERT INTO Belief_ResourceQuantityModifiers
	(BeliefType, ResourceType, ResourceQuantityModifier)
VALUES
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_IRON', 1),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_HORSE', 1),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_OIL', 1),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_COAL', 1),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_ALUMINUM', 1),
	('BELIEF_HEATHEN_CONVERSION', 'RESOURCE_URANIUM', 1);

-- Itinerant Preachers (Religious Celebrations)
UPDATE Beliefs
SET SpreadDistanceModifier = '0'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET HappinessPerFollowingCity = '0'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET CityStateMinimumInfluence = '0'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET ReducePolicyRequirements = '1'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

INSERT INTO Belief_HolyCityYieldChanges
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_ITINERANT_PREACHERS', 'YIELD_GOLDEN_AGE_POINTS', 5);

INSERT INTO Belief_GreatPersonPoints
	(BeliefType, GreatPersonType, Value)
VALUES
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_ARTIST', 2),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_MUSICIAN', 2),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_WRITER', 2),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_SCIENTIST', 2),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_MERCHANT', 2),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_ENGINEER', 2);

INSERT INTO Belief_GoldenAgeGreatPersonRateModifier
	(BeliefType, GreatPersonType, Modifier)
VALUES
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_ARTIST', 15),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_MUSICIAN', 15),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_WRITER', 15),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_SCIENTIST', 15),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_MERCHANT', 15),
	('BELIEF_ITINERANT_PREACHERS', 'GREATPERSON_ENGINEER', 15);

-- Messiah (Now Sainthood)

-- Missionary Zeal (Now Scholar-Priests)
UPDATE Beliefs
SET SciencePerOtherReligionFollower = '0'
WHERE Type = 'BELIEF_MISSIONARY_ZEAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

INSERT INTO Belief_HolyCityYieldChanges
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_MISSIONARY_ZEAL', 'YIELD_FAITH', 10);

INSERT INTO Belief_CapitalYieldChanges
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_MISSIONARY_ZEAL', 'YIELD_CULTURE', 10);

INSERT INTO Belief_YieldChangePerForeignCity
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_MISSIONARY_ZEAL', 'YIELD_GOLD', 2),
	('BELIEF_MISSIONARY_ZEAL', 'YIELD_GOLDEN_AGE_POINTS', 2);

UPDATE Beliefs
SET MissionaryStrengthModifier = '25'
WHERE Type = 'BELIEF_MISSIONARY_ZEAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Holy Order
UPDATE Beliefs
SET SpreadDistanceModifier = '20'
WHERE Type = 'BELIEF_HOLY_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET SpreadStrengthModifier = '20'
WHERE Type = 'BELIEF_HOLY_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET PressureChangeTradeRoute = '200'
WHERE Type = 'BELIEF_HOLY_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET MissionaryCostModifier = '0'
WHERE Type = 'BELIEF_HOLY_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET FriendlyCityStateSpreadModifier = '100'
WHERE Type = 'BELIEF_HOLY_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Religious Unity
UPDATE Beliefs
SET MissionaryCostModifier = '0'
WHERE Type = 'BELIEF_RELIGIOUS_UNITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET FriendlyCityStateSpreadModifier = '0'
WHERE Type = 'BELIEF_RELIGIOUS_UNITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET HappinessPerXPeacefulForeignFollowers = '0'
WHERE Type = 'BELIEF_RELIGIOUS_UNITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

INSERT INTO Belief_YieldPerOtherReligionFollower
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_RELIGIOUS_UNITY', 'YIELD_FAITH', 2),
	('BELIEF_RELIGIOUS_UNITY', 'YIELD_PRODUCTION', 2),
	('BELIEF_RELIGIOUS_UNITY', 'YIELD_SCIENCE', 2);

INSERT INTO Belief_YieldPerBirth
	(BeliefType, YieldType, Yield)
VALUES
	('BELIEF_RELIGIOUS_UNITY', 'YIELD_CULTURE', 5);

-- Martyrdom

UPDATE Beliefs
SET InquisitorPressureRetention = '50'
WHERE Type = 'BELIEF_MESSIAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- NEW

INSERT INTO Belief_YieldChangePerXForeignFollowers
	(BeliefType, YieldType, ForeignFollowers)
VALUES
	('BELIEF_JUST_WAR', 'YIELD_GOLD', 10),
	('BELIEF_JUST_WAR', 'YIELD_FAITH', 10);

INSERT INTO Belief_EraFaithUnitPurchase
	(BeliefType, EraType)
VALUES
	('BELIEF_HEATHEN_CONVERSION', 'ERA_ANCIENT'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_CLASSICAL'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_MEDIEVAL'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_RENAISSANCE'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_INDUSTRIAL'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_MODERN'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_POSTMODERN'),
	('BELIEF_HEATHEN_CONVERSION', 'ERA_FUTURE');

INSERT INTO Belief_ImprovementYieldChanges
	(BeliefType, ImprovementType, YieldType, Yield)
VALUES
	('BELIEF_MESSIAH', 'IMPROVEMENT_HOLY_SITE', 'YIELD_FAITH', 3),
	('BELIEF_MESSIAH', 'IMPROVEMENT_HOLY_SITE', 'YIELD_CULTURE', 3),
	('BELIEF_MESSIAH', 'IMPROVEMENT_HOLY_SITE', 'YIELD_TOURISM', 3);


UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_HEATHEN_CONVERSION'
WHERE Type = 'BELIEF_HEATHEN_CONVERSION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_RELIGIOUS_UNITY'
WHERE Type = 'BELIEF_RELIGIOUS_UNITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_HOLY_ORDER'
WHERE Type = 'BELIEF_HOLY_ORDER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_MISSIONARY_ZEAL'
WHERE Type = 'BELIEF_MISSIONARY_ZEAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_MESSIAH'
WHERE Type = 'BELIEF_MESSIAH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_ITINERANT_PREACHERS'
WHERE Type = 'BELIEF_ITINERANT_PREACHERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_JUST_WAR'
WHERE Type = 'BELIEF_JUST_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_RELIQUARY'
WHERE Type = 'BELIEF_RELIQUARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET Tooltip = 'TXT_KEY_BELIEF_RELIGIOUS_TEXTS'
WHERE Type = 'BELIEF_RELIGIOUS_TEXTS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );
