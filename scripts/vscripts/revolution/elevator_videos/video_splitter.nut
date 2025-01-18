
/*
types

# = clean?

0 = full elevator
1 = strech
2 = mirror
3 = ouroboros
4 = upside down
5 = tiled 									#
6 = tiled really big
7 = tiled Big 								#
8 = tiled single
9 = tiled double
10 = two by two
11 = tiled off 1
12 = tiled 2x4
13 = tiled doubled - with 2 blank
14 = bluescreen

*/

VideoConfig <- 
[
	{ map = "zoo_elevator_clean_down", arrival = "fizzler"	departure = "laser_portal", 	typeOverride=5}


	{ map = "sp_a1_begin", arrival = "", 					departure = "exercises_vert", 	typeOverride=10},
	{ map = "sp_a1_portalgun", arrival = "plc_blue_horiz", 			departure = "exercises_vert", typeOverride=10},
	{ map = "sp_a1_fizzler_intro", arrival = "fizzler", 			departure = "aperture_appear_horiz", typeOverride=5},
	{ map = "sp_a1_laser_intro", arrival = "laser_danger_horiz", 			departure = "exercises_horiz", typeOverride=5},
	{ map = "sp_a1_cube_fling_intro", arrival = "exercises_horiz", 			departure = "aperture_appear_horiz", typeOverride=5},
	{ map = "sp_a1_catapult_intro", arrival = "faithplate", 			departure = "faithplate", typeOverride=5},
	{ map = "sp_a1_final_test", arrival = "hard_light", 				departure = "hard_light", typeOverride=5},
	
	{ map = "sp_a2_outside", arrival = "exercises_vert", 			departure = "plc_blue_horiz", typeOverride=5},
	{ map = "sp_a2_fling_intro", arrival = "exercises_vert", 			departure = "plc_blue_horiz", typeOverride=13},
	{ map = "sp_a2_paints", arrival = "plc_blue_vert", 			departure = "aperture_appear_vert", typeOverride=9},
	{ map = "sp_a2_paint_fizzler", arrival = "fizzler", 			departure = "aperture_appear_horiz", typeOverride=4},
	{ map = "sp_a2_speed_gel", arrival = "fizzler", 			departure = "plc_blue_horiz", typeOverride=12},
	{ map = "sp_a2_full_portalgun", arrival = "laser_danger_vert", 			departure = "aperture_appear_vert", typeOverride=9},
	{ map = "sp_a2_playground", arrival = "turret_colours_type", 			departure = "turret_exploded_grey", typeOverride=12},
	{ map = "sp_a2_double_fling", arrival = "exercises_horiz", 			departure = "exercises_horiz", typeOverride=12},
	{ map = "sp_a2_tbeam_flings", arrival = "plc_blue_vert", 			departure = "laser_danger_vert", typeOverride=9},
	{ map = "sp_a2_end", arrival = "hard_light", 			departure = "laser_danger_vert", typeOverride=3},

	{ map = "sp_a3_vactube_flings", arrival = "",			departure = "turret_exploded_grey", typeOverride=5},
	{ map = "sp_a3_vactube_hanging", arrival = "faithplate",			departure = "aperture_appear_horiz", typeOverride=5},

	{ map = "sp_a4_schrodinger_intro", arrival = "laser_portal",			departure = "exercises_horiz", typeOverride=12}
	{ map = "sp_a4_schrodinger_vertical", arrival = "laser_danger_vert",			departure = "aperture_appear_vert", typeOverride=9}
	{ map = "sp_a4_schrodinger_flings", arrival = "faithplate",			departure = "turret_colours_type", typeOverride=12}
	{ map = "sp_a4_schrodinger_final", arrival = "laser_danger_vert",			departure = "aperture_appear_vert", typeOverride=9}
	{ map = "sp_a4_transition", arrival = "plc_blue_vert",			departure = "exercises_horiz", typeOverride=9}
]

ARRIVAL <- false;
DEPARTURE <- true;

function Precache() {

	local config = GetCurrentConfig();

	if("arrival" in config && config.arrival != "" ) {
		EntFire("@arrival_video_master", "SetMovie", GetVideoName(config.arrival), 0);
	}
	
	if("departure" in config && config.departure != "" ) {
		EntFire("@departure_video_master", "SetMovie", GetVideoName(config.departure), 0);
	}

	print("Precached movies\n");
}

function GetVideoName(name) {
	return "media/" + name;
}

// Returns the config set of the current map. Null if no config exists for the map
function GetCurrentConfig() {
	foreach (index, level in VideoConfig) {
		if (level.map == GetMapName()) {
			return level;
		}
	}

	return null;
}

function StopArrivalVideo(width, height) {
	EntFire("@arrival_video_master", "Disable", "", 0)
	EntFire("@arrival_video_master", "killhierarchy", "", 1.0)
	StopVideo(ARRIVAL,width,height)
}

function StopDepartureVideo(width, height) {
	EntFire("@departure_video_master", "Disable", "", 0)
	EntFire("@departure_video_master", "killhierarchy", "", 1.0)
	StopVideo(DEPARTURE,width,height)
}

function StopVideo(videoType, width, height) {
	for(local i=0;i<width;i+=1) {
		for(local j=0;j<height;j+=1) {
			local panelNum = 1 + width*j + i
			local signName
			
			if(videoType == DEPARTURE)
			{
				signName = "@departure_sign_" + panelNum
			}
			else
			{
				signName = "@arrival_sign_" + panelNum
			}
			
			EntFire(signName, "Disable", "", 0)
			EntFire(signName, "killhierarchy", "", 1.0)
		}
	}
}

function SetArrivalVideo(videoName) {
	EntFire("@arrival_video_master", "Enable", "", 0.1);
}

function SetDepartureVideo(videoName) {
	EntFire("@departure_video_master", "Enable", "", 0.1);
}

function StartArrivalVideo(width, height) {
	local config = GetCurrentConfig();
	
	local destructed = false;
	if("arrival" in config) {
		if("destructed" in config) destructed = config.destructed;

		SetArrivalVideo(GetVideoName(config.arrival));
		PrepareVideoScreens(ARRIVAL, width, height, destructed);
	} else {
		print("NOTICE! No arrival video defined!");
	}
}

function StartDepartureVideo(width, height) {
	local config = GetCurrentConfig();
	
	local destructed = false;
	if("departure" in config) {
		if("destructed" in config) destructed = config.destructed;
					
		SetDepartureVideo(GetVideoName(config.departure));
		PrepareVideoScreens(DEPARTURE, width, height, destructed);
	} else {
		print("NOTICE! No departure video defined!");
	}
}

function PrepareVideoScreens(videoType, width, height, destructed) {
	local type = 0
	local randomDestructChance = 0
	
		
	local mapName = GetMapName()
	foreach (index, level in VideoConfig)
	{
		if (level.map == mapName)
		{
			if ("typeOverride" in level)
			{
				type = level.typeOverride
			}
			
			if ("destructChance" in level)
			{
				randomDestructChance = level.destructChance
			}
		}
	}
	
	for(local i=0;i<width;i+=1) {
		for(local j=0;j<height;j+=1) {
			local panelNum = 1 + width*j + i
			local signName
			
			if (videoType == DEPARTURE)	{
				signName = "@departure_sign_" + panelNum
			} else {
				signName = "@arrival_sign_" + panelNum
			}		
					
			
			if( randomDestructChance > RandomInt(0,100) ) {
				EntFire(signName, "Kill", "", 0)
				continue
			}
			
			EntFire(signName, "SetUseCustomUVs", 1, 0)
			
			local uMin = (i+0.0001)/(width)
			local uMax = (i+1.0001)/(width)
			local vMin = (j+0.0001)/(height)
			local vMax = (j+1.0001)/(height)
			
			if( type == 0 /*full elevator*/ ) 				
			{
			
			}				
			else if( type == 1 /*stretch*/ ) 
			{
				uMin = 1.0 - (1.0-uMin)*(1.0-uMin)*(1.0-uMin)
				uMax = 1.0 - (1.0-uMax)*(1.0-uMax)*(1.0-uMax)
			}				

			else if( type == 2 /*Mirror*/ ) 
			{					
				uMin = 4*(1.0-uMin)*uMin
				uMax = 4*(1.0-uMax)*uMax					
			}				
			
			else if( type == 3 /*Ouroboros*/ )
			{
				uMin = ((i%12)+0.0001)/12
				uMax = ((i%12)+1.0001)/12

				if( ((i)%2) == 1 )
				{
					local temp = uMin
					uMin = uMax
					uMax = temp
				}
			}
			
			else if( type == 4 /*Upside down*/ )
			{
				vMin = 0.99999
				vMax = 0.00001
				
				uMin = ((i%3)+0.0001)/3
				uMax = ((i%3)+1.0001)/3					
			}
			
			else if( type == 5 /*Tiled*/ )
			{
				vMin = 0.00001
				vMax = 0.99999
				
				uMin = ((i%3)+0.0001)/3
				uMax = ((i%3)+1.0001)/3
			}

			else if( type == 6 /*Tiled Really Big*/ )
			{
				uMin = ((i%8)+0.0001)/8
				uMax = ((i%8)+1.0001)/8
			}

			else if( type == 7 /*Tiled Big*/ )
			{
				uMin = ((i%12)+0.0001)/12
				uMax = ((i%12)+1.0001)/12
			}

			else if( type == 8 /*Tiled Single*/ )
			{
				uMin = 0.0001
				uMax = 0.9999
				vMin = 0.0001
				vMax = 0.9999
			}

			else if( type == 9 /*Tiled Double*/ )
			{
				uMin = ((i%2)+0.0001)/2
				uMax = ((i%2)+1.0001)/2
			}

			else if( type == 10 /*Two by two*/ )
			{
				vMin = 0.00001
				vMax = 0.99999
				
				uMin = ((i%2)+0.0001)/2
				uMax = ((i%2)+1.0001)/2
			}

			else if( type == 11 /*Tiled off 1*/ )
			{
				vMin = 0.00001
				vMax = 0.99999
				
				uMin = (((i+1)%3)+0.0001)/3
				uMax = (((i+1)%3)+1.0001)/3
			}

			else if( type == 12 /*Tiled 2x4*/ )
			{
				uMin = ((i%6)+0.0001)/6
				uMax = ((i%6)+1.0001)/6
			}

			else if( type == 13 /*Tiled Double - with two blank*/ )
			{
				if( ((i)%4) < 2 )
				{
					uMin = ((i%2)+0.0001)/2
					uMax = ((i%2)+1.0001)/2
				}
				else
				{
					uMin = 0.97
					uMax = 0.97
				}
			}

			else if( type == 14 /*bluescreen*/ )
			{
				if( (i%8) >= 1 &&  
					(i%8) < 7 )
				{
					uMin = (((i-1)%8)+0.0001)/6
					uMax = (((i-1)%8)+1.0001)/6
				}
				else
				{
					uMin = 0.97
					uMax = 0.97
				}
			}
							 
			EntFire(signName, "SetUMin", uMin, 0)
			EntFire(signName, "SetUMax", uMax, 0)
			EntFire(signName, "SetVMin", vMin, 0)
			EntFire(signName, "SetVMax", vMax, 0)

			EntFire(signName, "Enable", "", 0.1)
			
//				printl(signName + " " + uMin + " " + uMax + " " + vMin + " " + vMax )
			
		}
	}
}
