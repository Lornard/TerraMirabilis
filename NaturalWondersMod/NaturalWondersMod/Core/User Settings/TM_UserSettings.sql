/*
	User Settings
	Credits: ChimpanG, Deliverator
*/

INSERT INTO TM_UserSettings (Setting, Section, Value)
VALUES

-----------------------------------------------
-- SECTION A

-- Natural Wonder Minimum Distance?
-- Game Default: 8

-- NOTE: Lowering this number will increase the likelihood of NWs appearing closer to each other
-----------------------------------------------

	('WONDER_DISTANCE',		NULL,	7),

-----------------------------------------------
-- SECTION B

-- Amount of Natural Wonders In Game (by map size)
-- Game Defaults below. We've doubled them on every map size.

-- NOTE: This does not guarantee you will see X number of wonders in the game. This will be due to map script placement. Consider this more of a maximum value.
-----------------------------------------------

	('WONDERS_DUEL',		'NW_MAP_SIZE',	4), -- Game Default 2
	('WONDERS_TINY',		'NW_MAP_SIZE',	6), -- Game Default 3
	('WONDERS_SMALL',		'NW_MAP_SIZE',	8), -- Game Default 4
	('WONDERS_STANDARD',	'NW_MAP_SIZE',	10), -- Game Default 5
	('WONDERS_LARGE',		'NW_MAP_SIZE',	12), -- Game Default 6
	('WONDERS_HUGE',		'NW_MAP_SIZE',	14), -- Game Default 7

	-- Gedemon's YNAMP
	('WONDERS_ENORMOUS',	'NW_MAP_SIZE',	16), -- Default 8
	('WONDERS_GIANT',		'NW_MAP_SIZE',	24), -- Default 12
	('WONDERS_LUDICROUS',	'NW_MAP_SIZE',	32), -- Default 16

	-- pOkiehl's Larger Map Sizes
	('WONDERS_MASSIVE',		'NW_MAP_SIZE',	16), -- Default 8
	('WONDERS_GIGANTIC',	'NW_MAP_SIZE',	24), -- Default 12
	('WONDERS_COLOSSAL',	'NW_MAP_SIZE',	32), -- Default 16

-----------------------------------------------
-- SECTION C

-- Natural Wonders provide standard adjacency bonuses to all Specialty Districts?
-- 1 = Yes, 0 = No
-- Our Default: 1

-- NOTE: When this is enabled, the Natural Wonder adjacency bonus for the Holy Site (and any unique replacements) is replaced with a standard adjacency bonus instead of a major
-----------------------------------------------

	('NW_ADJACENCY',	NULL,	1),

-----------------------------------------------
-- SECTION D

-- Buildings in Specialty Districts increase the base yield of the district by +1 when adjacent to a Natural Wonder?
-- 1 = Yes, 0 = No
-- Our Default: 1
-----------------------------------------------
	
	('NW_ADJACENCY_BUILDING',	NULL,	1),

-----------------------------------------------
-- SECTION E

-- All wonders have ownership effects?

-- 1 = Yes, 0 = No
-- Our Default: 1
-----------------------------------------------

	('NW_EFFECTS',		NULL,	1),

-----------------------------------------------
-- SECTION F

-- Naturalist purchase with Gold instead of Faith?
-- Game Default: 'YIELD_FAITH'
-- Our Default: 'YIELD_GOLD'

-- NOTE: The game will only allow you to purchase with Gold or Faith. Nothing else.

-- ADDENDUM: NOW OBSOLETE. Restructured so you can now purchase with both :)
-----------------------------------------------

	('NATURALIST_PURCHASE',	'YIELD_GOLD',	NULL),

-----------------------------------------------
-- SECTION G

-- National Parks provide Gold equal to their tourism?
-- 1 = Yes, 0 = No

-- Game Default: 0
-- Our Default: 1
-----------------------------------------------

	('PARK_GOLD_TOURISM',	NULL,	1),

-----------------------------------------------
-- SECTION H

-- Number of Amenities National Parks provide to their City?

-- Game Default: 2
-----------------------------------------------

	('PARK_AMENITIES',	NULL,	2),

-----------------------------------------------
-- SECTION I

-- Minimum Start Distances between Major/Minor Civilization and Natural Wonder

-- NOTE:
-- Apparently there is some override in the background that makes the start distance superfluous :/
-- I believe it only happens when there are many NWs and many CSs on the map and it becomes impossible to adhere to these rules.
-----------------------------------------------

	('START_DISTANCE_MAJOR',	NULL,	3), -- Game Default 3 (tiles)
	('START_DISTANCE_MINOR',	NULL,	5), -- Game Default 3 (tiles)

-----------------------------------------------
-- SECTION J

-- Experience earned for discovering Natural Wonder
-----------------------------------------------

	('NW_REVEAL_XP',	NULL,	15), -- Game Default 10

-----------------------------------------------
-- SECTION K

-- Natural Wonder adjacent fertility

-- NOTE: "Fertility" is essentially a weight that determines how desirable a plot is to the AI. It is not the only weight that determines this, but it is one of them.
-- NOTE: By increasing this number, you are making the AI more competitive for them. We feel 2 is a decent weight to add a bit of a "settler race", but you can increase or decrease it.

-- Some examples of existing fertility weights:
-- Coast = 0
-- Fresh Water = 2
-- Luxury Resource = 5
-- River = 1
-- Snow / Ice = 0
-----------------------------------------------

	('NW_FERTILITY',	NULL,	2), -- Game Default 1

-----------------------------------------------
-- SECTION L (Rise & Fall Only)

-- Adjust EraScore earned for finding or settling Natural Wonders.

-- NOTE: The more wonders you have on the map, the more likely you'll see a Golden Age due to Era Score
-----------------------------------------------

	('ERASCORE_SETTLE',				NULL,	2), -- Game Default 3
	('ERASCORE_DISCOVERED',			NULL,	1), -- Game Default 1
	('ERASCORE_DISCOVERED_FIRST',	NULL,	2), -- Game Default 3

-----------------------------------------------
-- SECTION Z

-- Enable Natural Wonders
-- Change the word Enabled to Disabled below

-- NOTE: Don't disable less wonders than you expect to appear in-game. (See Section B above)
-- NOTE: Enabling Natural Wonders added by DLC or XP here that you do not own will not enable them in game.
-----------------------------------------------

	-- Vanilla
	('FEATURE_BARRIER_REEF',		'ENABLED',		NULL),
	('FEATURE_CLIFFS_DOVER',		'ENABLED',		NULL),
	('FEATURE_CRATER_LAKE',			'ENABLED',		NULL),
	('FEATURE_DEAD_SEA',			'ENABLED',		NULL),
	('FEATURE_EVEREST',				'ENABLED',		NULL),
	('FEATURE_GALAPAGOS',			'ENABLED',		NULL),
	('FEATURE_KILIMANJARO',			'ENABLED',		NULL),
	('FEATURE_PANTANAL',			'ENABLED',		NULL),
	('FEATURE_PIOPIOTAHI',			'ENABLED',		NULL),
	('FEATURE_TORRES_DEL_PAINE',	'ENABLED',		NULL),
	('FEATURE_TSINGY',				'ENABLED',		NULL),
	('FEATURE_YOSEMITE',			'ENABLED',		NULL),

	-- Vikings DLC
	('FEATURE_EYJAFJALLAJOKULL',	'ENABLED',		NULL),
	('FEATURE_GIANTS_CAUSEWAY',		'ENABLED',		NULL),
	('FEATURE_LYSEFJORDEN',			'ENABLED',		NULL),

	-- Australia DLC
	('FEATURE_ULURU',				'ENABLED',		NULL),

	-- Khmer and Indonesia DLC
	('FEATURE_HA_LONG_BAY',			'ENABLED',		NULL),

	-- Rise and Fall
	('FEATURE_DELICATE_ARCH',		'ENABLED',		NULL),
	('FEATURE_EYE_OF_THE_SAHARA',	'ENABLED',		NULL),
	('FEATURE_LAKE_RETBA',			'ENABLED',		NULL),
	('FEATURE_MATTERHORN',			'ENABLED',		NULL),
	('FEATURE_RORAIMA',				'ENABLED',		NULL),
	('FEATURE_UBSUNUR_HOLLOW',		'ENABLED',		NULL),
	('FEATURE_ZHANGYE_DANXIA',		'ENABLED',		NULL),

	-- Gathering Storm
	('FEATURE_CHOCOLATEHILLS',		'ENABLED',		NULL),
	('FEATURE_DEVILSTOWER',			'ENABLED',		NULL), -- Mato Tipila
	('FEATURE_GOBUSTAN',			'ENABLED',		NULL),
	('FEATURE_IKKIL',				'ENABLED',		NULL),
	('FEATURE_PAMUKKALE',			'ENABLED',		NULL),
	('FEATURE_VESUVIUS',			'ENABLED',		NULL),
	('FEATURE_WHITEDESERT',			'ENABLED',		NULL), -- Sahara el Beyda

	-- Terra Mirabilis
	('FEATURE_BARRINGER_CRATER',	'ENABLED',		NULL),
	('FEATURE_BIOLUMINESCENT_BAY',	'ENABLED',		NULL),
	('FEATURE_CERRO_DE_POTOSI',		'ENABLED',		NULL),
	('FEATURE_DALLOL',				'ENABLED',		NULL),
	('FEATURE_GIBRALTAR',			'ENABLED',		NULL),
	('FEATURE_GRAND_MESA',			'ENABLED',		NULL),
	('FEATURE_KAILASH',				'ENABLED',		NULL),
	('FEATURE_KRAKATOA',			'ENABLED',		NULL),
	('FEATURE_LAKE_VICTORIA',		'ENABLED',		NULL),
	('FEATURE_MOSI_OA_TUNYA',		'ENABLED',		NULL),
	('FEATURE_MOTLATSE_CANYON',		'ENABLED',		NULL),
	('FEATURE_NAMIB',				'ENABLED',		NULL),
	('FEATURE_OLD_FAITHFUL',		'ENABLED',		NULL),
	('FEATURE_OUNIANGA',			'ENABLED',		NULL),
	('FEATURE_SALAR_DE_UYUNI',		'ENABLED',		NULL),
	('FEATURE_SINAI',				'ENABLED',		NULL),
	('FEATURE_SRI_PADA',			'ENABLED',		NULL),
	('FEATURE_VREDEFORT_DOME',		'ENABLED',		NULL),
	('FEATURE_WULINGYUAN',			'ENABLED',		NULL),

-----------------------------------------------
-- Don't do anything with this one. This is to make sure all records are caught.
-----------------------------------------------

	('CLOSE_USER_SETTINGS',		NULL,	1);