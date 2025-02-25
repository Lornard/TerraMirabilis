/*
	Ha Long Bay
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Harbors provide +2 Housing for any Civilization that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_HA_LONG_BAY_DESCRIPTION'
WHERE	FeatureType = 'FEATURE_HA_LONG_BAY';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_HA_LONG_BAY_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_HA_LONG_BAY'
	AND EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_HA_LONG_BAY')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_HA_LONG_BAY_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_HA_LONG_BAY')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,										ModifierType,						SubjectRequirementSetId	)
SELECT	'MODIFIER_TM_FEATURE_HA_LONG_BAY_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_HA_LONG_BAY'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_HA_LONG_BAY');
		
INSERT INTO Modifiers
		(ModifierId,										ModifierType,						SubjectRequirementSetId			)
VALUES	('MODIFIER_TM_FEATURE_HA_LONG_BAY_HARBOR_HOUSING',	'MODTYPE_TM_DISTRICT_HOUSING',		'REQSET_TM_DISTRICT_IS_HARBOR'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value	)
SELECT	'MODIFIER_TM_FEATURE_HA_LONG_BAY_ATTACH_PLAYERS',	'ModifierId',	'MODIFIER_TM_FEATURE_HA_LONG_BAY_HARBOR_HOUSING'
WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_HA_LONG_BAY');
		
INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value	)
VALUES	('MODIFIER_TM_FEATURE_HA_LONG_BAY_HARBOR_HOUSING',	'Amount',		2		);
