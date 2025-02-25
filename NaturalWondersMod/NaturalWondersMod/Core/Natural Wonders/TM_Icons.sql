/*
	Icons
	Credits: ChimpanG, Deliverator
*/

-----------------------------------------------
-- IconTextureAtlases
-----------------------------------------------
	
INSERT INTO IconTextureAtlases	
		(Name,										IconSize,	IconsPerRow,	IconsPerColumn,	Filename						)
VALUES  ('ICON_ATLAS_TERRA_MIRABILIS',				256,	 	8,				8,				'FEATURE_TM_ATLAS_256.dds'		),
		('ICON_ATLAS_TERRA_MIRABILIS',				64,			8,				8,				'FEATURE_TM_ATLAS_64.dds'		),
		('ICON_ATLAS_TERRA_MIRABILIS',				50,		 	8,				8,				'FEATURE_TM_ATLAS_50.dds'		),
		
		-- RESOURCES
		
		('ICON_ATLAS_RESOURCE_TM_TORTOISE',			256,		8,				1,				'RESOURCE_TM_TORTOISE_256.dds'	),
		('ICON_ATLAS_RESOURCE_TM_TORTOISE',			64,			8,				1,				'RESOURCE_TM_TORTOISE_64.dds'	),
		('ICON_ATLAS_RESOURCE_TM_TORTOISE',			50,			8,				1,				'RESOURCE_TM_TORTOISE_50.dds'	),
		('ICON_ATLAS_RESOURCE_TM_TORTOISE',			38,			8,				1,				'RESOURCE_TM_TORTOISE_38.dds'	),
		('ICON_ATLAS_RESOURCE_TM_TORTOISE_FOW',		64,			8,				1,				'RESOURCE_TM_TORTOISE_64.dds'	),

		('ICON_ATLAS_RESOURCE_TM_LITHIUM',			256,		8,				1,				'RESOURCE_TM_LITHIUM_256.dds'	),
		('ICON_ATLAS_RESOURCE_TM_LITHIUM',			64,			8,				1,				'RESOURCE_TM_LITHIUM_64.dds'	),
		('ICON_ATLAS_RESOURCE_TM_LITHIUM',			50,			8,				1,				'RESOURCE_TM_LITHIUM_50.dds'	),
		('ICON_ATLAS_RESOURCE_TM_LITHIUM',			38,			8,				1,				'RESOURCE_TM_LITHIUM_38.dds'	),
		('ICON_ATLAS_RESOURCE_TM_LITHIUM_FOW',		64,			8,				1,				'RESOURCE_TM_LITHIUM_64.dds'	),

		('ICON_ATLAS_RESOURCE_TM_SYLVITE',			256,		8,				1,				'RESOURCE_TM_SYLVITE_256.dds'	),
		('ICON_ATLAS_RESOURCE_TM_SYLVITE',			64,			8,				1,				'RESOURCE_TM_SYLVITE_64.dds'	),
		('ICON_ATLAS_RESOURCE_TM_SYLVITE',			50,			8,				1,				'RESOURCE_TM_SYLVITE_50.dds'	),
		('ICON_ATLAS_RESOURCE_TM_SYLVITE',			38,			8,				1,				'RESOURCE_TM_SYLVITE_38.dds'	),
		('ICON_ATLAS_RESOURCE_TM_SYLVITE_FOW',		64,			8,				1,				'RESOURCE_TM_SYLVITE_64.dds'	);

INSERT INTO IconTextureAtlases	
		(Name,											IconSize,	Baseline,	IconsPerRow,	IconsPerColumn,	Filename						)
VALUES	('ICON_ATLAS_RESOURCE_TM_TORTOISE_FONTICON',	22,			6,			1,				1,				'RESOURCE_TM_TORTOISE_22.dds'	),
		('ICON_ATLAS_RESOURCE_TM_LITHIUM_FONTICON',		22,			6,			1,				1,				'RESOURCE_TM_LITHIUM_22.dds'	),
		('ICON_ATLAS_RESOURCE_TM_SYLVITE_FONTICON',		22,			6,			1,				1,				'RESOURCE_TM_SYLVITE_22.dds'	);
			
-----------------------------------------------
-- IconDefinitions
-----------------------------------------------

INSERT INTO IconDefinitions	
		(Name,									Atlas, 										'Index'	)
VALUES  ('ICON_FEATURE_BARRINGER_CRATER',		'ICON_ATLAS_TERRA_MIRABILIS',				0		),
		('ICON_FEATURE_CERRO_DE_POTOSI',		'ICON_ATLAS_TERRA_MIRABILIS',				1		),
		('ICON_FEATURE_GIBRALTAR',				'ICON_ATLAS_TERRA_MIRABILIS',				2		),
		('ICON_FEATURE_GRAND_MESA',				'ICON_ATLAS_TERRA_MIRABILIS',				3		),
		('ICON_FEATURE_KAILASH',				'ICON_ATLAS_TERRA_MIRABILIS',				4		),
		('ICON_FEATURE_KRAKATOA',				'ICON_ATLAS_TERRA_MIRABILIS',				5		),
		('ICON_FEATURE_LAKE_VICTORIA',			'ICON_ATLAS_TERRA_MIRABILIS',				6		),
		('ICON_FEATURE_MOTLATSE_CANYON',		'ICON_ATLAS_TERRA_MIRABILIS',				7		),
		('ICON_FEATURE_OLD_FAITHFUL',			'ICON_ATLAS_TERRA_MIRABILIS',				8		),
		('ICON_FEATURE_SALAR_DE_UYUNI',			'ICON_ATLAS_TERRA_MIRABILIS',				9		),
		('ICON_FEATURE_SINAI',					'ICON_ATLAS_TERRA_MIRABILIS',				10		),
		('ICON_FEATURE_SRI_PADA',				'ICON_ATLAS_TERRA_MIRABILIS',				11		),
		('ICON_FEATURE_WULINGYUAN',				'ICON_ATLAS_TERRA_MIRABILIS',				12		),
		('ICON_FEATURE_BIOLUMINESCENT_BAY',		'ICON_ATLAS_TERRA_MIRABILIS',				13		),
		('ICON_FEATURE_DALLOL',					'ICON_ATLAS_TERRA_MIRABILIS',				14		),
		('ICON_FEATURE_NAMIB',					'ICON_ATLAS_TERRA_MIRABILIS',				15		),
		('ICON_FEATURE_OUNIANGA',				'ICON_ATLAS_TERRA_MIRABILIS',				16		),
		('ICON_FEATURE_MOSI_OA_TUNYA',			'ICON_ATLAS_TERRA_MIRABILIS',				17		),
		('ICON_FEATURE_VREDEFORT_DOME',			'ICON_ATLAS_TERRA_MIRABILIS',				18		),
		
		-- RESOURCES

		('ICON_RESOURCE_TM_TORTOISE',			'ICON_ATLAS_RESOURCE_TM_TORTOISE',			0		),
		('ICON_RESOURCE_TM_TORTOISE_FOW',		'ICON_ATLAS_RESOURCE_TM_TORTOISE_FOW',		0		),
		('RESOURCE_TM_TORTOISE',				'ICON_ATLAS_RESOURCE_TM_TORTOISE_FONTICON',	0		),

		('ICON_RESOURCE_TM_LITHIUM',			'ICON_ATLAS_RESOURCE_TM_LITHIUM',			0		),
		('ICON_RESOURCE_TM_LITHIUM_FOW',		'ICON_ATLAS_RESOURCE_TM_LITHIUM_FOW',		0		),
		('RESOURCE_TM_LITHIUM',					'ICON_ATLAS_RESOURCE_TM_LITHIUM_FONTICON',	0		),

		('ICON_RESOURCE_TM_SYLVITE',			'ICON_ATLAS_RESOURCE_TM_SYLVITE',			0		),
		('ICON_RESOURCE_TM_SYLVITE_FOW',		'ICON_ATLAS_RESOURCE_TM_SYLVITE_FOW',		0		),
		('RESOURCE_TM_SYLVITE',					'ICON_ATLAS_RESOURCE_TM_SYLVITE_FONTICON',	0		);