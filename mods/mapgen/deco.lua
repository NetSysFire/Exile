local impethu_on   = {"nodes_nature:granite", "nodes_nature:basalt", "nodes_nature:limestone", "nodes_nature:sandstone", "nodes_nature:siltstone", "nodes_nature:claystone", "nodes_nature:silt", "nodes_nature:clay", "nodes_nature:sand", "nodes_nature:gravel"}
local darkasthaan_on = {"nodes_nature:granite", "nodes_nature:basalt", "nodes_nature:silt", "nodes_nature:clay", "nodes_nature:sand", "nodes_nature:gravel"}
local moss_on      = {"nodes_nature:marshland_soil", "nodes_nature:marshland_soil_wet", "nodes_nature:highland_soil", "nodes_nature:highland_soil_wet", "nodes_nature:woodland_soil", "nodes_nature:woodland_soil_wet"}
local mushrooms_on = {"nodes_nature:silt", "nodes_nature:clay", "nodes_nature:sand", "nodes_nature:gravel"}
local fish_on      = {"nodes_nature:silt", "nodes_nature:silt_wet_salty", "nodes_nature:sand", "nodes_nature:sand_wet_salty"}
local gravel_on    = {"nodes_nature:granite", "nodes_nature:limestone", "nodes_nature:gneiss", "nodes_nature:conglomerate",}
local sand_on      = {"nodes_nature:granite", "nodes_nature:limestone", "nodes_nature:gneiss", "nodes_nature:sandstone",}
local clay_on      = {"nodes_nature:granite", "nodes_nature:limestone", "nodes_nature:gneiss", "nodes_nature:claystone",}
local silt_on      = {"nodes_nature:granite", "nodes_nature:limestone", "nodes_nature:gneiss", "nodes_nature:siltstone",}

local grassland_on        = {"nodes_nature:grassland_soil", "nodes_nature:grassland_soil_wet"}
local marshland_on        = {"nodes_nature:marshland_soil", "nodes_nature:marshland_soil_wet"}
local highland_on         = {"nodes_nature:highland_soil",  "nodes_nature:highland_soil_wet"}
local duneland_on         = {"nodes_nature:duneland_soil",  "nodes_nature:duneland_soil_wet"}
local woodland_on         = {"nodes_nature:woodland_soil",  "nodes_nature:woodland_soil_wet"}
local barren_grassland_on = {"nodes_nature:grassland_barren_soil", "nodes_nature:grassland_barren_soil_wet"}
local dry_woodland_on     = {"nodes_nature:woodland_dry_soil", "nodes_nature:woodland_dry_soil_wet"}
local drylands_on         = {"nodes_nature:grassland_barren_soil", "nodes_nature:woodland_dry_soil"}
local all_woodland_on     = {"nodes_nature:woodland_soil", "nodes_nature:woodland_soil_wet", "nodes_nature:woodland_dry_soil", "nodes_nature:woodland_dry_soil_wet"}

local all_soils_on = {
	"nodes_nature:marshland_soil",
	"nodes_nature:marshland_soil_wet",
	"nodes_nature:grassland_soil",
	"nodes_nature:grassland_soil_wet",
	"nodes_nature:highland_soil",
	"nodes_nature:highland_soil_wet",
	"nodes_nature:duneland_soil",
	"nodes_nature:duneland_soil_wet",
	"nodes_nature:woodland_soil",
	"nodes_nature:woodland_soil_wet"
	}
local lowland_ymax = 600
local lowland_ymin = 1
--- Schematics ---
local s1     = { name = "nodes_nature:gemedi", param2 = 2 }
local gemedi = {
	size = {y = 7, x = 1, z = 1},
	data = {
		s1, s1, s1, s1, s1, s1, s1
		},
	yslice_prob = {
		{ypos = 0, prob = 255},
		{ypos = 1, prob = 245},
		{ypos = 2, prob = 225},
		{ypos = 3, prob = 205},
		{ypos = 4, prob = 155},
		{ypos = 5, prob = 55},
		{ypos = 6, prob = 35},
		},
	}
local s2     = { name = "nodes_nature:cana",   param2 = 2 }
local cana   = {
	size = {y = 7, x = 1, z = 1},
	data = {
		s2, s2, s2, s2, s2, s2, s2
		},
	yslice_prob = {
		{ypos = 0, prob = 255},
		{ypos = 1, prob = 255},
		{ypos = 2, prob = 255},
		{ypos = 3, prob = 255},
		{ypos = 4, prob = 230},
		{ypos = 5, prob = 155},
		{ypos = 6, prob = 105},
		},
	}
local s3     = { name = "nodes_nature:tiken",  param2 = 2 }
local tiken  = {
	size = {y = 7, x = 1, z = 1},
	data = {
		s3, s3, s3, s3, s3, s3, s3
		},
	yslice_prob = {
		{ypos = 0, prob = 255},
		{ypos = 1, prob = 255},
		{ypos = 2, prob = 255},
		{ypos = 3, prob = 255},
		{ypos = 4, prob = 230},
		{ypos = 5, prob = 155},
		{ypos = 6, prob = 105},
		},
}

--Exile v4 cane plant, found in dry woodlands
local s4 = { name = "nodes_nature:chalin", param2 = 2 }
local chalin = {
   size = {y = 7, x = 1, z = 1},
   data = {
      s4, s4, s4, s4, s4, s4, s4
   },
   yslice_prob = {
      {ypos = 0, prob = 255},
      {ypos = 1, prob = 255},
      {ypos = 2, prob = 255},
      {ypos = 3, prob = 255},
      {ypos = 4, prob = 230},
      {ypos = 5, prob = 155},
      {ypos = 6, prob = 105},
   },
}

--- Decoration --- 
local decoration_list = {
	--         Description                               name                                  deco_type    place_on                             place_offset_y sidelen fill_ratio noise_params                                                                                                       y_max              y_min         flags              decoration                        spawn_by       num_spawn_by schematic              place_offset_y flags                            rotation   param2 param2_max
	{ --[[    Oceans: kelp                         ]]    "nodes_nature:kelp"                 , "simple"   , kelp_on                            ,  -1,           16,     nil     ,  {offset = -0.04, scale = 0.3000, spread = {x =  64, y =  64, z =  64}, seed =  82112, octaves = 3, persist = 0.8},                -7,          -15, "force_placement", "nodes_nature:kelp"             , nil          , nil,         nil                  , nil,           nil                             ,      nil,  48,    96, },
	{ --[[    Oceans: seagrass                     ]]    "nodes_nature:seagrass"             , "simple"   , seagrass_on                        ,  -1,           16,     nil     ,  {offset =  0.00, scale = 0.4000, spread = {x =  32, y =  32, z =  32}, seed =  11312, octaves = 3, persist = 0.8},                -2,           -5, "force_placement", "nodes_nature:seagrass"         , nil          , nil,         nil                  , nil,           nil                             ,      nil,  16,   nil, },
	{ --[[    Oceans: sea lettuce                  ]]    "nodes_nature:sea_lettuce"          , "simple"   , sea_lettuce_on                     ,  -1,           16,     nil     ,  {offset =  0.00, scale = 0.4000, spread = {x =  32, y =  32, z =  32}, seed =  84322, octaves = 3, persist = 0.8},                -2,           -5, "force_placement", "nodes_nature:sea_lettuce"      , nil          , nil,         nil                  , nil,           nil                             ,      nil,  16,   nil, },
	{ --[[     Trees: maraka in grassland          ]]    "nodes_nature:maraka_tree"          , "schematic", grassland_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0007, spread = {x = 250, y = 250, z = 250}, seed =    222, octaves = 3, persist = 0.7},                22, lowland_ymin,               nil, nil                             , nil          , nil,         find("maraka_tree")  ,  -3,           "place_center_x, place_center_z", "random", nil,   nil, },
	{ --[[     Trees: maraka in woodland           ]]    "nodes_nature:maraka_tree2"         , "schematic", woodland_on                        , nil,           80,     0.006000,  nil                                                                                                              ,                40, lowland_ymin,               nil, nil                             , nil          , nil,         find("maraka_tree")  ,  -3,           "place_center_x, place_center_z", "random", nil,   nil, },
	{ --[[     Trees: old tangkal in woodland      ]]    "nodes_nature:tangkal_tree_old"     , "schematic", woodland_on                        , nil,           80,     0.000900,  nil                                                                                                              ,                25, lowland_ymin,               nil, nil                             , nil          , nil,         find("tangkal_old")  ,  -5,           "place_center_x, place_center_z", "random", nil,   nil, },
	{ --[[     Trees: adult tangkal in woodland    ]]    "nodes_nature:tangkal_tree"         , "schematic", woodland_on                        , nil,           80,     0.000700,  nil                                                                                                              ,                25, lowland_ymin,               nil, nil                             , nil          , nil,         find("tangkal_tree") ,  -5,           "place_center_x, place_center_z", "random", nil,   nil, },
	{ --[[     Trees: young tangkal in woodland    ]]    "nodes_nature:tangkal_tree_young"   , "schematic", woodland_on                        , nil,           80,     0.000500,  nil                                                                                                              ,                25, lowland_ymin,               nil, nil                             , nil          , nil,         find("tangkal_young"),  -3,           "place_center_x, place_center_z", "random", nil,   nil, },
	{ --[[     Fills: Gravel Sediment              ]]    "nodes_nature:gravel"               , "simple"   , gravel_on                          , nil,           04,     nil     ,  {offset = -0.80, scale = 2.0000, spread = {x = 100, y = 100, z = 100}, seed =  53995, octaves = 3, persist = 1.0},                 1,           -1,               nil, "nodes_nature:gravel"           , "group:water",   1,         nil                  ,  -1,           "force_placement"               ,      nil, nil,   nil, },
	{ --[[  Lowlands: wet loam sediments           ]]    "nodes_nature:loam_wet"             , "simple"   , {"nodes_nature:loam"}              , nil,           04,     nil     ,  {offset = -0.40, scale = 3.0000, spread = {x =  32, y =  32, z =  32}, seed =   7995, octaves = 3, persist = 1.0},                 9,            0,               nil, "nodes_nature:loam_wet"         , nil          , nil,         nil                  ,  -1,           "force_placement"               ,      nil, nil,   nil, },
	{ --[[  Lowlands: wet clay sediment            ]]    "nodes_nature:clay_wet"             , "simple"   , {"nodes_nature:clay"}              , nil,           04,     nil     ,  {offset = -0.40, scale = 3.0000, spread = {x =  32, y =  32, z =  32}, seed =   7995, octaves = 3, persist = 1.0},                 9,            0,               nil, "nodes_nature:clay_wet"         , nil          , nil,         nil                  ,  -1,           "force_placement"               ,      nil, nil,   nil, },
	{ --[[  Lowlands: wet silt sediment            ]]    "nodes_nature:silt_wet"             , "simple"   , {"nodes_nature:silt"}              , nil,           04,     nil     ,  {offset = -0.40, scale = 3.0000, spread = {x =  32, y =  32, z =  32}, seed =   7995, octaves = 3, persist = 1.0},                 9,            0,               nil, "nodes_nature:silt_wet"         , nil          , nil,         nil                  ,  -1,           "force_placement"               ,      nil, nil,   nil, },
	{ --[[  Lowlands: wet sand sediment            ]]    "nodes_nature:sand_wet"             , "simple"   , {"nodes_nature:sand"}              , nil,           04,     nil     ,  {offset = -0.40, scale = 3.0000, spread = {x =  32, y =  32, z =  32}, seed =   7995, octaves = 3, persist = 1.0},                 9,            0,               nil, "nodes_nature:sand_wet"         , nil          , nil,         nil                  ,  -1,           "force_placement"               ,      nil, nil,   nil, },
	{ --[[  Lowlands: wet gravel sediment          ]]    "nodes_nature:gravel_wet"           , "simple"   , {"nodes_nature:gravel"}            , nil,           04,     nil     ,  {offset = -0.40, scale = 3.0000, spread = {x =  32, y =  32, z =  32}, seed =   7995, octaves = 3, persist = 1.0},                 9,            0,               nil, "nodes_nature:gravel_wet"       , nil          , nil,         nil                  ,  -1,           "force_placement"               ,      nil, nil,   nil, },
	{ --[[ Grassland: gemedi                       ]]    "nodes_nature:gemedi"               , "schematic", grassland_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 1.0000, spread = {x = 128, y = 128, z = 128}, seed =    998, octaves = 3, persist = 0.8},                10, lowland_ymin,               nil, nil                             , nil          , nil,         gemedi               , nil,           nil                             ,      nil, nil,   nil, },
	{ --[[ Grassland: sari                         ]]    "nodes_nature:sari"                 , "simple"   , grassland_on                       , nil,           80,     0.200000,  nil                                                                                                              , lowland_ymax     , lowland_ymin,               nil, "nodes_nature:sari"             , nil          , nil,         nil                  , nil,           nil                             ,      nil,   2,   nil, },
	{ --[[ Grassland: gitiri                       ]]    "nodes_nature:gitiri"               , "simple"   , grassland_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0800, spread = {x =  32, y =  32, z =  32}, seed =   1001, octaves = 3, persist = 0.6}, lowland_ymax     , lowland_ymin,               nil, "nodes_nature:gitiri"           , nil          , nil,         nil                  , nil,           nil                             ,      nil,   2,   nil, },
	{ --[[ Grassland: tikusati                     ]]    "nodes_nature:tikusati"             , "simple"   , grassland_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0010, spread = {x = 100, y = 100, z = 100}, seed =   1002, octaves = 3, persist = 0.5}, lowland_ymax     , lowland_ymin,               nil, "nodes_nature:tikusati"         , nil          , nil,         nil                  , nil,           nil                             ,      nil,   2,   nil, },
	{ --[[ Grassland: wiha                         ]]    "nodes_nature:wiha"                 , "simple"   , grassland_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0020, spread = {x =  32, y =  32, z =  32}, seed =   1003, octaves = 3, persist = 0.5}, lowland_ymax     , lowland_ymin,               nil, "nodes_nature:wiha"             , nil          , nil,         nil                  , nil,           nil                             ,      nil,   4,   nil, },
	{ --[[ Grassland: hakimi                       ]]    "nodes_nature:hakimi"               , "simple"   , grassland_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0010, spread = {x = 100, y = 100, z = 100}, seed =   1004, octaves = 3, persist = 0.5}, lowland_ymax     , lowland_ymin,               nil, "nodes_nature:hakimi"           , nil          , nil,         nil                  , nil,           nil                             ,      nil,   3,   nil, },
	{ --[[ Grassland: nebiyi                       ]]    "nodes_nature:nebiyi"               , "simple"   , grassland_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0010, spread = {x = 100, y = 100, z = 100}, seed =   1005, octaves = 3, persist = 0.5}, lowland_ymax     , lowland_ymin,               nil, "nodes_nature:nebiyi"           , nil          , nil,         nil                  , nil,           nil                             ,      nil,   1,   nil, },
	{ --[[ Grassland: zufani                       ]]    "nodes_nature:zufani"               , "simple"   , grassland_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0020, spread = {x =  32, y =  32, z =  32}, seed =   1006, octaves = 3, persist = 0.5}, lowland_ymax     , lowland_ymin,               nil, "nodes_nature:zufani"           , nil          , nil,         nil                  , nil,           nil                             ,      nil,   2,   nil, },
	{ --[[ Marshland: cana                         ]]    "nodes_nature:cana"                 , "schematic", marshland_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 1.0000, spread = {x =  16, y =  16, z =  16}, seed =    578, octaves = 3, persist = 0.7},                 5, lowland_ymin,               nil, nil                             , nil          , nil,         cana                 , nil,           nil                             ,      nil, nil,   nil, },
	{ --[[ Marshland: tanai                        ]]    "nodes_nature:tanai"                , "simple"   , marshland_on                       , nil,           80,     0.300000,  nil                                                                                                              , lowland_ymax     , lowland_ymin,               nil, "nodes_nature:tanai"            , nil          , nil,         nil                  , nil,           nil                             ,      nil,   4,   nil, },
	{ --[[ Marshland: galanta                      ]]    "nodes_nature:galanta"              , "simple"   , marshland_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0020, spread = {x =  32, y =  32, z =  32}, seed =    153, octaves = 3, persist = 0.5}, lowland_ymax     , lowland_ymin,               nil, "nodes_nature:galanta"          , nil          , nil,         nil                  , nil,           nil                             ,      nil,   4,   nil, },
	{ --[[ Marshland: marbhan                      ]]    "nodes_nature:marbhan"              , "simple"   , marshland_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0010, spread = {x = 100, y = 100, z = 100}, seed =   5505, octaves = 3, persist = 0.5}, lowland_ymax     , lowland_ymin,               nil, "nodes_nature:marbhan"          , nil          , nil,         nil                  , nil,           nil                             ,      nil,   2,   nil, },
	{ --[[ Marshland: bronach                      ]]    "nodes_nature:bronach"              , "simple"   , marshland_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0600, spread = {x =  16, y =  16, z =  16}, seed =   1707, octaves = 3, persist = 0.9}, lowland_ymax     , lowland_ymin,               nil, "nodes_nature:bronach"          , nil          , nil,         nil                  , nil,           nil                             ,      nil,   3,   nil, },
	{ --[[  Duneland: tiken                        ]]    "nodes_nature:tiken"                , "schematic", duneland_on                        , nil,           16,     nil     ,  {offset =  0.00, scale = 1.0000, spread = {x =  64, y =  64, z =  64}, seed =    998, octaves = 3, persist = 0.9},                 7, lowland_ymin,               nil, nil                             , nil          , nil,         tiken                , nil,           nil                             ,      nil, nil,   nil, },
	{ --[[  Duneland: alaf                         ]]    "nodes_nature:alaf"                 , "simple"   , duneland_on                        , nil,           80,     0.100000,  nil                                                                                                              , lowland_ymax + 20, lowland_ymin,               nil, "nodes_nature:alaf"             , nil          , nil,         nil                  , nil,           nil                             ,      nil,   4,   nil, },
	{ --[[  Duneland: anperla                      ]]    "nodes_nature:anperla"              , "simple"   , duneland_on                        , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0010, spread = {x =  32, y =  32, z =  32}, seed =   1112, octaves = 3, persist = 0.8}, lowland_ymax + 20, lowland_ymin,               nil, "nodes_nature:anperla"          , nil          , nil,         nil                  , nil,           nil                             ,      nil,   3,   nil, },
	{ --[[  Highland: thoka                        ]]    "nodes_nature:thoka"                , "simple"   , highland_on                        , nil,           80,     0.300000,  nil                                                                                                              ,             31000, lowland_ymin,               nil, "nodes_nature:thoka"            , nil          , nil,         nil                  , nil,           nil                             ,      nil,   4,   nil, },
	{ --[[  Highland: merki                        ]]    "nodes_nature:merki"                , "simple"   , highland_on                        , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0020, spread = {x =  32, y =  32, z =  32}, seed =   1112, octaves = 3, persist = 0.8}, lowland_ymax     , lowland_ymin,               nil, "nodes_nature:merki"            , nil          , nil,         nil                  , nil,           nil                             ,      nil,   2,   nil, },
	{ --[[  Woodland: damo                         ]]    "nodes_nature:damo"                 , "simple"   , woodland_on                        , nil,           80,     0.100000,  nil                                                                                                              , lowland_ymax + 50, lowland_ymin,               nil, "nodes_nature:damo"             , nil          , nil,         nil                  , nil,           nil                             ,      nil,   4,   nil, },
	{ --[[  Woodland: vansano                      ]]    "nodes_nature:vansano"              , "simple"   , woodland_on                        , nil,           80,     0.010000,  nil                                                                                                              , lowland_ymax + 50, lowland_ymin,               nil, "nodes_nature:vansano"          , nil          , nil,         nil                  , nil,           nil                             ,      nil,   2,   nil, },
	{ --[[  Boulders: granite boulder              ]]    "nodes_nature:granite_boulder"      , "simple"   , "nodes_nature:granite"             , nil,           80,     0.050000,  nil                                                                                                              ,             31000,       -31000,               nil, "nodes_nature:granite_boulder"  , nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[  Boulders: limestone boulder            ]]    "nodes_nature:limestone_boulder"    , "simple"   , "nodes_nature:limestone"           , nil,           80,     0.050000,  nil                                                                                                              ,             31000,       -31000,               nil, "nodes_nature:limestone_boulder", nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[  Boulders: basalt boulder               ]]    "nodes_nature:basalt_boulder"       , "simple"   , "nodes_nature:basalt"              , nil,           80,     0.050000,  nil                                                                                                              ,             31000,       -31000,               nil, "nodes_nature:basalt_boulder"   , nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[  Boulders: ironstone, dense on deposits ]]    "nodes_nature:ironstone_boulder"    , "simple"   , "nodes_nature:ironstone"           , nil,           80,     0.600000,  nil                                                                                                              ,             31000,       -31000,               nil, "nodes_nature:ironstone_boulder", nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[  Boulders: gneiss boulder               ]]    "nodes_nature:gneiss_boulder"       , "simple"   , "nodes_nature:gneiss"              , nil,           80,     0.050000,  nil                                                                                                              ,             31000,       -31000,               nil, "nodes_nature:gneiss_boulder"   , nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[  Boulders: jade boulder                 ]]    "nodes_nature:jade_boulder"         , "simple"   , "nodes_nature:jade"                , nil,           80,     0.400000,  nil                                                                                                              ,             31000,       -31000,               nil, "nodes_nature:jade_boulder"     , nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[ Sediments: cave gravel                  ]]    "cave_gravel"                       , "simple"   , gravel_on                          , nil,           04,     nil     ,  {offset = -0.40, scale = 3.0000, spread = {x =  32, y =  32, z =  32}, seed = 873515, octaves = 2, persist = 0.9},             31000,       -31000,               nil, "nodes_nature:gravel"           , nil          , nil,         nil                  ,  -1,           "all_floors, force_placement"   ,      nil, nil,   nil, },
	{ --[[ Sediments: cave sand                    ]]    "cave_sand"                         , "simple"   , sand_on                            , nil,           04,     nil     ,  {offset = -0.40, scale = 3.0000, spread = {x =  32, y =  32, z =  32}, seed = 795515, octaves = 2, persist = 0.9},             31000,       -31000,               nil, "nodes_nature:sand"             , nil          , nil,         nil                  ,  -1,           "all_floors, force_placement"   ,      nil, nil,   nil, },
	{ --[[ Sediments: cave clay                    ]]    "cave_clay"                         , "simple"   , clay_on                            , nil,           04,     nil     ,  {offset = -0.40, scale = 3.0000, spread = {x =  32, y =  32, z =  32}, seed =  87005, octaves = 2, persist = 0.9},             31000,       -31000,               nil, "nodes_nature:clay"             , nil          , nil,         nil                  ,  -1,           "all_floors, force_placement"   ,      nil, nil,   nil, },
	{ --[[ Sediments: cave silt                    ]]    "cave_silt"                         , "simple"   , silt_on                            , nil,           04,     nil     ,  {offset = -0.40, scale = 3.0000, spread = {x =  32, y =  32, z =  32}, seed =  87005, octaves = 2, persist = 0.9},             31000,       -31000,               nil, "nodes_nature:silt"             , nil          , nil,         nil                  ,  -1,           "all_floors, force_placement"   ,      nil, nil,   nil, },
	  ---- Cave mushrooms -- artifact species escaped from cultivation                                                                                                                                                                                                                                                                                                                                                                                                                                                   
	{ --[[ Mushrooms: lambakap  (food and water)   ]]    "nodes_nature:lambakap"             , "simple"   , mushrooms_on                       , nil,           80,     0.010000,  nil                                                                                                              ,               -80,         -950,               nil, "nodes_nature:lambakap"         , nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[ Mushrooms: reshedaar (wood source)      ]]    "nodes_nature:reshedaar"            , "simple"   , mushrooms_on                       , nil,           80,     0.010000,  nil                                                                                                              ,               -80,         -950,               nil, "nodes_nature:reshedaar"        , nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[ Mushrooms: mahal     (fibre source)     ]]    "nodes_nature:mahal"                , "simple"   , mushrooms_on                       , nil,           80,     0.010000,  nil                                                                                                              ,               -80,         -950,               nil, "nodes_nature:mahal"            , nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[   Animals: gundu                        ]]    "animals:gundu_eggs"                , "simple"   , fish_on                            , nil,           80,     0.000500,  nil                                                                                                              ,                -5,          -25, "force_placement", "animals:gundu_eggs"            , nil          , nil,         nil                  , nil,           nil                             ,      nil, nil,   nil, },
	{ --[[   Animals: sarkamos                     ]]    "animals:sarkamos_eggs"             , "simple"   , fish_on                            , nil,           80,     0.000070,  nil                                                                                                              ,                -7,          -35, "force_placement", "animals:sarkamos_eggs"         , nil          , nil,         nil                  , nil,           nil                             ,      nil, nil,   nil, },
	{ --[[   Animals: impethu                      ]]    "animals:impethu_eggs"              , "simple"   , impethu_on                         , nil,           80,     0.005000,  nil                                                                                                              , lowland_ymax     ,        -1300,               nil, "animals:impethu_eggs"          , nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[   Animals: kubwakubwa                   ]]    "animals:kubwakubwa_eggs"           , "simple"   , impethu_on                         , nil,           80,     0.001500,  nil                                                                                                              , lowland_ymax     ,         -150,               nil, "animals:kubwakubwa_eggs"       , nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[   Animals: kubwakubwa on land           ]]    "animals:kubwakubwa_eggs_land"      , "simple"   , all_soils_on                       , nil,           80,     0.000100,  nil                                                                                                              , lowland_ymax     ,            2,               nil, "animals:kubwakubwa_eggs"       , nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[   Animals: darkasthaan                  ]]    "animals:darkasthaan_eggs"          , "simple"   , darkasthaan_on                     , nil,           80,     0.002000,  nil                                                                                                              ,              -130,        -1300,               nil, "animals:darkasthaan_eggs"      , nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[   Animals: pegasun                      ]]    "animals:pegasun_eggs"              , "simple"   , all_soils_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0015, spread = {x = 100, y = 100, z = 100}, seed =   1882, octaves = 2, persist = 0.9}, lowland_ymax     ,            3,               nil, "animals:pegasun_eggs"          , nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[   Animals: sneachan                     ]]    "animals:sneachan_eggs"             , "simple"   , all_soils_on                       , nil,           80,     0.002000,  nil                                                                                                              , lowland_ymax     ,            3,               nil, "animals:sneachan_eggs"         , nil          , nil,         nil                  , nil,           "all_floors"                    ,      nil, nil,   nil, },
	{ --[[  Multiple: moss                         ]]    "nodes_nature:moss"                 , "simple"   , all_soils_on                       , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0050, spread = {x = 100, y = 100, z = 100}, seed =   1000, octaves = 3, persist = 0.9}, lowland_ymax     , lowland_ymin,               nil, "nodes_nature:moss"             , nil          , nil,         nil                  , nil,           nil                             ,      nil, nil,   nil, },
	{ --[[  Multiple: denser moss in marsh         ]]    "nodes_nature:moss"                 , "simple"   , moss_on                            , nil,           16,     nil     ,  {offset =  0.00, scale = 0.0900, spread = {x =  16, y =  16, z =  16}, seed =   1640, octaves = 3, persist = 0.8},             31000,            1,               nil, "nodes_nature:moss"             , nil          , nil,         nil                  , nil,           nil                             ,      nil, nil,   nil, },
	  ---- Exile v4 experimental-biome additions         name                                  deco_type    place_on                             place_offset_y sidelen fill_ratio noise_params                                                                                                      y_max                     y_min  flags               decoration                        spawn_by       num_spawn_by schematic              place_offset_y flags                             rotation param2 param2_max
	{ --[[     Trees: sasaran in dry woodland      ]]    "nodes_nature:sasaran_tree1_lowland", "schematic", dry_woodland_on                    ,  -4,           80,     0.007500,  nil                                                                                                              ,                35, lowland_ymin,               nil, nil                             , nil          , nil,         find("sasaran1")     ,  -4,           "place_center_x, place_center_z", "random", nil,   nil, },
	{ --[[     Trees: sasaran in dry woodland      ]]    "nodes_nature:sasaran_tree1"        , "schematic", dry_woodland_on                    ,  -4,           80,     0.001000,  nil                                                                                                              ,                75,           35,               nil, nil                             , nil          , nil,         find("sasaran1")     ,  -4,           "place_center_x, place_center_z", "random", nil,   nil, },
	{ --[[     Trees: kagum on salt silt   169     ]]    "nodes_nature:kagum_tree"           , "schematic", "nodes_nature:silt_wet_salty"      ,   0,           80,     nil     ,  {offset = 0, scale = 0.065, spread = {x = 128, y = 128, z = 128}, seed = 51122, octaves = 3, persist = 0.5}      ,                 3,           -1,               nil, nil                             , nil          , nil,         find("kagum1")       ,   0,           "place_center_x, place_center_z", "random", nil,   nil, },
	{ --[[ All woods: Lowland Chalin       170     ]]    "nodes_nature:chalin_lowland"       , "schematic", all_woodland_on                    , nil,           80,     0.007500,  nil                                                                                                              ,                35, lowland_ymin,               nil, nil                             , nil          , nil,         chalin               , nil,           nil                             ,      nil, nil,   nil, },
	{ --[[ Dry woods: Chalin               171     ]]    "nodes_nature:chalin"               , "schematic", dry_woodland_on                    , nil,           80,     0.075000,  nil                                                                                                              ,      lowland_ymax,           35,               nil, nil                             , nil          , nil,         chalin               , nil,           nil                             ,      nil, nil,   nil, },
	{ --[[ Dry woods: Momo                 172     ]]    "nodes_nature:momo"                 , "simple"   , dry_woodland_on                    , nil,           80,     0.001000,  nil                                                                                                              ,      lowland_ymax, lowland_ymin,               nil, "nodes_nature:momo"             , nil          , nil,         nil                  , nil,           nil                             ,      nil,   1,   nil, },
	{ --[[ All arids: Tashvish                     ]]    "nodes_nature:tashvish"             , "simple"   , drylands_on                        , nil,           80,     0.300000,  nil                                                                                                              ,      lowland_ymax, lowland_ymin,               nil, "nodes_nature:tashvish"         , nil          , nil,         nil                  , nil,           nil                             ,      nil,   4,   nil, },
	{ --[[ Underground: Cave worms on cave roof    ]]    "nodes_nature:glow_worm"            , "simple"   , glow_worm_on                       , nil,           16,     nil     ,  {offset = -0.04, scale = 0.4, spread = {x= 64,y= 64,z= 64}, seed=11002, octaves = 3, persist = 0.9}              ,               -15,        -1000,               nil, "nodes_nature:glow_worm"        , nil          , nil,         nil                  , nil,           "all_ceilings"                  ,      nil,   3,   nil, },
}

for i in ipairs(decoration_list) do
	minetest.register_decoration(
		{
			name           = decoration_list[i][01],
			deco_type      = decoration_list[i][02],
			place_on       = decoration_list[i][03],
			place_offset_y = decoration_list[i][04],	
			sidelen        = decoration_list[i][05],
			fill_ratio     = decoration_list[i][06],	
			noise_params   = decoration_list[i][07],
			y_max          = decoration_list[i][08],
			y_min          = decoration_list[i][09],
			flags          = decoration_list[i][10],
			decoration     = decoration_list[i][11],
			spawn_by       = decoration_list[i][12],
			num_spawn_by   = decoration_list[i][13],
			schematic      = decoration_list[i][14],
			place_offset_y = decoration_list[i][15],
			flags          = decoration_list[i][16],
			rotation       = decoration_list[i][17],
			param2         = decoration_list[i][18],
			param2_max     = decoration_list[i][19],
		}
	)
end

-------- Start node timers ---
-------- get decoration IDs --
	local gundu_eggs           = minetest.get_decoration_id("animals:gundu_eggs")
	local sarkamos_eggs        = minetest.get_decoration_id("animals:sarkamos_eggs")
	local impethu_eggs         = minetest.get_decoration_id("animals:impethu_eggs")
	local kubwakubwa_eggs      = minetest.get_decoration_id("animals:kubwakubwa_eggs")
	local kubwakubwa_eggs_land = minetest.get_decoration_id("animals:kubwakubwa_eggs_land")
	local darkasthaan_eggs     = minetest.get_decoration_id("animals:darkasthaan_eggs")
	local pegasun_eggs         = minetest.get_decoration_id("animals:pegasun_eggs")
	local sneachan_eggs        = minetest.get_decoration_id("animals:sneachan_eggs")
minetest.set_gen_notify(
	{decoration = true},
	{
		gundu_eggs,
		sarkamos_eggs,
		impethu_eggs,
		kubwakubwa_eggs,
		kubwakubwa_eggs_land,
		darkasthaan_eggs,
		pegasun_eggs,
		sneachan_eggs
	}
	)
minetest.register_on_generated(
	function(minp, maxp, blockseed) -- start nodetimers
		local gennotify = minetest.get_mapgen_object("gennotify")
		local poslist = {}
		for _, pos in ipairs(gennotify["decoration#"..gundu_eggs] or {}) do
			local gundu_eggs_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
			table.insert(poslist, gundu_eggs_pos)
			end
		for _, pos in ipairs(gennotify["decoration#"..sarkamos_eggs] or {}) do
			local sarkamos_eggs_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
			table.insert(poslist, sarkamos_eggs_pos)
			end
		for _, pos in ipairs(gennotify["decoration#"..impethu_eggs] or {}) do
			local impethu_eggs_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
			table.insert(poslist, impethu_eggs_pos)
			end
		for _, pos in ipairs(gennotify["decoration#"..kubwakubwa_eggs] or {}) do
			local kubwakubwa_eggs_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
			table.insert(poslist, kubwakubwa_eggs_pos)
			end
		for _, pos in ipairs(gennotify["decoration#"..kubwakubwa_eggs_land] or {}) do
			local kubwakubwa_eggs_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
			table.insert(poslist, kubwakubwa_eggs_pos)
			end
		for _, pos in ipairs(gennotify["decoration#"..darkasthaan_eggs] or {}) do
			local darkasthaan_eggs_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
			table.insert(poslist, darkasthaan_eggs_pos)
			end
		for _, pos in ipairs(gennotify["decoration#"..pegasun_eggs] or {}) do
			local pegasun_eggs_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
			table.insert(poslist, pegasun_eggs_pos)
			end
		for _, pos in ipairs(gennotify["decoration#"..sneachan_eggs] or {}) do
			local sneachan_eggs_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
			table.insert(poslist, sneachan_eggs_pos)
			end
		if #poslist ~= 0 then
			for i = 1, #poslist do
				local pos = poslist[i]
				minetest.get_node_timer(pos):start(1)
				end
			end
		end
	)
