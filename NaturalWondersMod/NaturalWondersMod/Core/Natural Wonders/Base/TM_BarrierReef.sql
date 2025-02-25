/*
	Barrier Reef
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Improved sea resources yield +1 Gold in every City for any Civilization that owns at least one of these tiles
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_BARRIER_REEF_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_BARRIER_REEF';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_BARRIER_REEF_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_BARRIER_REEF'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_BARRIER_REEF_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_BARRIER_REEF')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,							SubjectRequirementSetId						)
VALUES	('MODIFIER_TM_FEATURE_BARRIER_REEF_ATTACH_PLAYERS',		'MODTYPE_TM_ATTACH_ALL_PLAYERS',		'REQSET_TM_PLAYER_HAS_FEATURE_BARRIER_REEF'	),
		('MODIFIER_TM_FEATURE_BARRIER_REEF_SEA_RESOURCE_GOLD',	'MODTYPE_TM_ADJUST_PLAYER_PLOT_YIELD',	'REQSET_TM_PLOT_HAS_SEA_RESOURCE'			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value													)
VALUES	('MODIFIER_TM_FEATURE_BARRIER_REEF_ATTACH_PLAYERS',		'ModifierId',	'MODIFIER_TM_FEATURE_BARRIER_REEF_SEA_RESOURCE_GOLD'	),
		('MODIFIER_TM_FEATURE_BARRIER_REEF_SEA_RESOURCE_GOLD',	'YieldType',	'YIELD_GOLD'											),
		('MODIFIER_TM_FEATURE_BARRIER_REEF_SEA_RESOURCE_GOLD',	'Amount',		1														);