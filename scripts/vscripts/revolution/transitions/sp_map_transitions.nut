
FIRST_MAP_WITH_NORMAL_GUN <- "sp_a1_fizzler_intro"
FIRST_MAP_WITH_UPGRADE_GUN <- "sp_a2_playground"
FIRST_MAP_WITH_PROTO_GUN <- "sp_a3_vactube_intro"

NO_PORTAL_GUN <- [
	"sp_a3_preintro",
	"sp_a3_intro"
]

VIEWMODEL_CLEAN <- "models/weapons/v_portalgun_clean.mdl"
VIEWMODEL_DIRTY <- "models/weapons/v_portalgun_dirty.mdl"
VIEWMODEL_PROTO <- "models/weapons/v_portalgun.mdl"

// The list of maps
MapList <- [


"sp_a1_begin",			
"sp_a1_portalgun",		
"sp_a1_fizzler_intro",	
"sp_a1_laser_intro",	
"sp_a1_cube_fling_intro",
"sp_a1_catapult_intro",	
"sp_a1_final_test",		
"sp_a1_bts_wind",
"sp_a1_bts_wind_2",
"sp_a1_bts_chambers",
"sp_a1_end",

"sp_a2_outside",
"sp_a2_fling_intro",
"sp_a2_paints",
"sp_a2_paint_fizzler",
"sp_a2_speed_gel",
"sp_a2_full_portalgun",
"sp_a2_playground",
"sp_a2_tbeam_flings",
"sp_a2_double_fling",
"sp_a2_end",
"sp_a2_end_2",

"sp_a3_preintro",
"sp_a3_intro",
"sp_a3_vactube_intro",
"sp_a3_labs",
"sp_a3_vactube_lumber",
"sp_a3_lake",
"sp_a3_vactube_cuberemove",
"sp_a3_vactube_pipes",
"sp_a3_vactube_gelbending",
"sp_a3_climb",
"sp_a3_vactube_flings",
"sp_a3_vactube_hanging",

"sp_a4_intro",
"sp_a4_schrodinger_intro",
"sp_a4_schrodinger_vertical",
"sp_a4_schrodinger_flings",
"sp_a4_schrodinger_final",
"sp_a4_transition",
"sp_a4_finale"

]

TransitionConnected <- false;

CHAPTER_TITLES <- 
[
	{ map = "sp_a1_begin", 				title_text = "#Revolution_Chapter_1_Heading", subtitle_text = "#Revolution_Chapter_1_Subheading" },
	{ map = "sp_a1_bts_wind", 			title_text = "#Revolution_Chapter_2_Heading", subtitle_text = "#Revolution_Chapter_2_Subheading" },
	{ map = "sp_a2_outside", 			title_text = "#Revolution_Chapter_3_Heading", subtitle_text = "#Revolution_Chapter_3_Subheading" },
	{ map = "sp_a2_playground",			title_text = "#Revolution_Chapter_4_Heading", subtitle_text = "#Revolution_Chapter_4_Subheading" },
	{ map = "sp_a3_preintro",			title_text = "#Revolution_Chapter_5_Heading", subtitle_text = "#Revolution_Chapter_5_Subheading" },
	{ map = "sp_a3_vactube_lumber",		title_text = "#Revolution_Chapter_6_Heading", subtitle_text = "#Revolution_Chapter_6_Subheading" },
	{ map = "sp_a4_intro",				title_text = "#Revolution_Chapter_7_Heading", subtitle_text = "#Revolution_Chapter_7_Subheading" },
	{ map = "sp_a4_transition",		 	title_text = "#Revolution_Chapter_8_Heading", subtitle_text = "#Revolution_Chapter_8_Subheading" }
]

// --------------------------------------------------------
// TeleportToMapStart - we just transitioned, teleport us to the correct place.
// --------------------------------------------------------
function TeleportToMapStart() {

	EntFire("@elevator_entry_teleport", "Teleport", 0, 0);
	EntFire("@arrival_teleport", "Teleport", 0, 0);
	
	// Is this a gun-free map?
	foreach (index, map in NO_PORTAL_GUN) {
		if (map == GetMapName()) {
			printl("Playing without portalgun. Current map is in NO_PORTAL_GUN list");
			return false;
		}
	}

	// Figure out where we are in the map list
	local gunType = 0;
	foreach (index, map in MapList) {
		if(map == FIRST_MAP_WITH_NORMAL_GUN) {
			gunType = 1;
		} else if(map == FIRST_MAP_WITH_UPGRADE_GUN) {
			gunType = 2;
		} else if(map == FIRST_MAP_WITH_PROTO_GUN) {
			gunType = 3;
		}
		if(map == GetMapName()) {
			break;
		}
	}

	// Assign portal gun to player
	if( gunType == 1 ) {

		printl("Playing with clean portalgun");
		local maker  = Entities.FindByName(null, "@portalgun_clean_maker");
		maker.SpawnEntityAtNamedEntityOrigin("@arrival_teleport");

	} else if( gunType == 2 ) {

		printl("Playing with dirty portalgun");
		local maker  = Entities.FindByName(null, "@portalgun_dirty_maker");
		maker.SpawnEntityAtNamedEntityOrigin("@arrival_teleport");

	} else if( gunType == 3 ) {

		printl("Playing with proto portalgun");
		local maker  = Entities.FindByName(null, "@portalgun_proto_maker");
		maker.SpawnEntityAtNamedEntityOrigin("@arrival_teleport");

	} else {
		printl("Playing without portalgun. Current map not in MapList");
	}
}

function RunPlayerCommand(command) {
	EntFire("@command", "Command", command, 0);
}

function DumpMapList() {
		
	printl("================ DUMPING MAP LIST ================");
	
	foreach(index, map in MapList) {

		if(GetMapName() == MapList[index]) {
			printl(index + ": " + MapList[index] + " <--- You Are Here")
		} else {
			printl(index + ": " + MapList[index])
		}
		
	}
	
	printl("==================================================")

}

function LoadNextMap() {

	foreach(index, map in MapList) {
		if(GetMapName() == MapList[index]) {
			
			EntFire("@changelevel", "changelevel", MapList[index + 1], 0);
			return;
		}
	}

	printl("Last map");
	RunPlayerCommand("disconnect");
}

// Meant to be called from the teleport box in the transition map instance
function TransitionReady() {
	LoadNextMap();
}

// Call this to start the transition process
function PrepareTransition() {
	printl("Preparing map transition...");
	EntFire("@exit_fade", "fade", "", 0);
	EntFire("@exit_teleport", "Teleport", "", 0.3);
}

// Call this to start the transition process
function PrepareTransitionNoFade() {
	printl("Preparing map transition...");
	EntFire("@exit_teleport", "Teleport", "", 0.3);
}

function TryTransition() {
	
	if(TransitionConnected) {
		return;
	}

	if(IsSomebodyTalking()) {
		printl("A scene is playing. Not transitioning");
		return;
	}

	printl("Nobody is talking, changing map");
	PrepareTransition();
}

function ForceTransition() {
	printl("Forcing map transition. Not waiting for actors to finish!");
	PrepareTransition();
}

function IsSomebodyTalking() {
	local core0Talking = IsActorTalking("@revo_core0");
	local core1Talking = IsActorTalking("@revo_core1");

	return core0Talking || core1Talking;
}

function IsActorTalking(actorName) {
	local manager = Entities.FindByClassname(null, "scene_manager");
	local actor = Entities.FindByName(null, actorName);
	return manager.IsSceneRunning(actor);
}

function DisplayChapterTitle()
{
	foreach (index, level in CHAPTER_TITLES)
	{
		if (level.map == GetMapName() )
		{
			EntFire( "@chapter_title_text", "SetTextColor", "210 210 210 128", 0.0 )
			EntFire( "@chapter_title_text", "SetTextColor2", "50 90 116 128", 0.0 )
			EntFire( "@chapter_title_text", "SetPosY", "0.32", 0.0 )
			EntFire( "@chapter_title_text", "SetText", level.title_text, 0.0 )
			EntFire( "@chapter_title_text", "display", "", 0.0 )
			
			EntFire( "@chapter_subtitle_text", "SetTextColor", "210 210 210 128", 0.0 )
			EntFire( "@chapter_subtitle_text", "SetTextColor2", "50 90 116 128", 0.0 )
			EntFire( "@chapter_subtitle_text", "SetPosY", "0.35", 0.0 )
			EntFire( "@chapter_subtitle_text", "SetText", level.subtitle_text, 0.0 )
			EntFire( "@chapter_subtitle_text", "display", "", 0.0 )
		}
	}
}