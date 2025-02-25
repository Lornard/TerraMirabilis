/*
	Dead Sea
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- Effects for Natural Wonders
-- Effect: Units may heal an additional 10 HP when [ICON_Fortified] Fortified for any Civilization that owns at least one of these tiles.
-----------------------------------------------

UPDATE	Features
SET		Description = 'LOC_TM_FEATURE_DEAD_SEA_DESCRIPTION',
		AddsFreshWater = 0
WHERE	FeatureType = 'FEATURE_DEAD_SEA';

	UPDATE	Features
	SET		Description = 'LOC_TM_FEATURE_DEAD_SEA_EFFECT_DESCRIPTION'
	WHERE	FeatureType = 'FEATURE_DEAD_SEA'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	INSERT INTO GameModifiers (ModifierId)
	SELECT	'MODIFIER_TM_FEATURE_DEAD_SEA_ATTACH_PLAYERS'
	WHERE EXISTS (SELECT * FROM Features WHERE FeatureType = 'FEATURE_DEAD_SEA')
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

	DELETE FROM GameModifiers
	WHERE ModifierId = 'DEAD_SEA_ADJACENT_UNITS_ADJUST_HEAL_PER_TURN'
	AND EXISTS (SELECT * FROM TM_UserSettings WHERE Setting = 'NW_EFFECTS' AND Value = 1);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,									ModifierType,						SubjectRequirementSetId					)
VALUES	('MODIFIER_TM_FEATURE_DEAD_SEA_ATTACH_PLAYERS',	'MODTYPE_TM_ATTACH_ALL_PLAYERS',	'REQSET_TM_PLAYER_HAS_FEATURE_DEAD_SEA'	),
		('MODIFIER_TM_FEATURE_DEAD_SEA_UNIT_HEALING',	'MODTYPE_TM_ADJUST_UNIT_HEALING',	NULL									);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value										)
VALUES	('MODIFIER_TM_FEATURE_DEAD_SEA_ATTACH_PLAYERS',		'ModifierId',	'MODIFIER_TM_FEATURE_DEAD_SEA_UNIT_HEALING'	),
		('MODIFIER_TM_FEATURE_DEAD_SEA_UNIT_HEALING',		'Amount',		10											),
		('MODIFIER_TM_FEATURE_DEAD_SEA_UNIT_HEALING',		'Type',			'ALL'										);
