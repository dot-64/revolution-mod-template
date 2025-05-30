

DBG <- 0
FORCE_GUN_AND_HALLWAY <- 0

FIRST_MAP_WITH_GUN <- "sp_a1_fizzler_intro"
FIRST_MAP_WITH_UPGRADE_GUN <- "sp_a2_elevator_fall"
FIRST_MAP_WITH_POTATO_GUN <- ""
LAST_PLAYTEST_MAP <- ""


CHAPTER_TITLES <- 
[
	{ map = "sp_a1_01", title_text = "#pr_chapter1_title", subtitle_text = "#pr_chapter1_subtitle", displayOnSpawn = false,		displaydelay = 1.0 },

]

// Display the chapter title
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
			EntFire( "@chapter_title_text", "display", "", level.displaydelay )
			
			EntFire( "@chapter_subtitle_text", "SetTextColor", "210 210 210 128", 0.0 )
			EntFire( "@chapter_subtitle_text", "SetTextColor2", "50 90 116 128", 0.0 )
			EntFire( "@chapter_subtitle_text", "SetPosY", "0.35", 0.0 )
			EntFire( "@chapter_subtitle_text", "settext", level.subtitle_text, 0.0 )
			EntFire( "@chapter_subtitle_text", "display", "", level.displaydelay )
		}
	}
}

// Display the chapter title on spawn if it is flagged to show up on spawn
function TryDisplayChapterTitle()
{
	foreach (index, level in CHAPTER_TITLES)
	{
		if (level.map == GetMapName() && level.displayOnSpawn )
		{
			DisplayChapterTitle()
		}	
	}
}

LOOP_TIMER <- 0

initialized <- false

// This is the order to play the maps
MapPlayOrder<- [

// Chapter 1
"sp_a1_begin",				// Chamber 00
"sp_a1_portalgun",			// Chamber 01
"sp_a1_fizzler_intro",		// Chamber 02
"sp_a1_laser_intro",		// Chamber 03
"sp_a1_cubes",				// Chamber 04
"sp_a1_catapult_intro",		// Chamber 05
"sp_a1_deathfizzler",		// Chamber 06
"sp_a1_lightbridge_intro",	// Chamber 07
"sp_a1_laser_advanced",		// Chamber 08
"sp_a1_final_test",			// Chamber 10
"sp_a1_transition",
"sp_a1_vaultdoor",

// Chapter 2
"sp_a2_intro",
"sp_a2_fire_turret",
"sp_a2_blue_gel_intro",
"sp_a2_blue_gel_flings",
"sp_a2_orange_gel_intro",
"sp_a2_combined_gel",
"sp_a2_full_portalgun",

"sp_a2_elevator_fall",
"sp_a2_elevator_crash",
"sp_a2_basement",


]


// --------------------------------------------------------
// OnPostTransition - we just transitioned, teleport us to the correct place.
// --------------------------------------------------------
function OnPostTransition()
{
	local foundMap = false
	
	foreach (index, map in MapPlayOrder)
	{	
		if (GetMapName() == MapPlayOrder[index])
		{
			foundMap = false
			
			// hook up our entry elevator
			if( index - 1 >= 0 )
			{
				if( MapPlayOrder[index-1].find("@") == null )
				{
					printl( "Teleporting to default start pos" )
					EntFire( "@elevator_entry_teleport", "Teleport", 0, 0 )		
					EntFire( "@arrival_teleport", "Teleport", 0, 0 )		
				}
				else
				{
					printl( "Trying to teleport to " + MapPlayOrder[index - 1] + "_teleport" )
					EntFire( MapPlayOrder[index - 1] + "_entry_teleport", "Teleport", 0, 0.0 )			
				}
			}
			break
		}
	}
		
	if (foundMap == false )
	{
		EntFire( "@elevator_entry_teleport", "Teleport", 0, 0 )
		EntFire( "@arrival_teleport", "Teleport", 0, 0 )		
	}
}

// --------------------------------------------------------
// EntFire_MapLoopHelper
// --------------------------------------------------------
function EntFire_MapLoopHelper( classname, suffix, command, param, delay )
{
	// This calls EntFire on an entity of a given type, named with the given suffix.
	// This deals with instance name mangling (though it doesn't guarantee uniqueness)
	local suffix_len = suffix.len()
	for ( local ent = Entities.FindByClassname( null, classname ); ent != null; ent = Entities.FindByClassname( ent, classname ) )
	{
		local ent_name = ent.GetName()
		local suffix_offset = ent_name.find( suffix )
		if ( ( suffix_offset != null ) && ( suffix_offset == ( ent_name.len() - suffix_len ) ) )
		{
			EntFire( ent_name, command, param, delay )
			return
		}
	}
	printl( "MAPLOOP: ---- ERROR! Failed to find entity " + suffix + " while initiating map transition" );
}

// --------------------------------------------------------
// Think
// --------------------------------------------------------
function Think()
{	
	// Start the game loop if the cvar is set
	if ( initialized && LoopSinglePlayerMaps() )
	{
		// initialize the timer
		if( LOOP_TIMER == 0 )
		{
			LOOP_TIMER = Time() + 10 // restart time in seconds
		}
		
		// transition to the next map if the timer has expired
		if ( LOOP_TIMER < Time() )
		{
			// reset loop timer
			LOOP_TIMER = 0

			printl( "\nMAPLOOP: timer expired, moving on..." )

			// Ensure point_viewcontrollers are disabled
			EntFire( "point_viewcontrol", "disable", 0, 0 )
		
			// Change the level (this sequence was originally in the 'transition_without_survey' logic_relay)
			EntFire_MapLoopHelper( "trigger_once",   "survey_trigger",    "Disable",       "",                    0.0 )
			EntFire_MapLoopHelper( "env_fade",       "exit_fade",         "Fade",          "",                    0.0 )
			EntFire_MapLoopHelper( "point_teleport", "exit_teleport",     "Teleport",      "",                    0.3 )
			EntFire_MapLoopHelper( "logic_script",   "transition_script", "RunScriptCode", "TransitionFromMap()", 0.4 )
		}
	}
	
	
	if (initialized)
	{
		return
	}
	initialized = true


	DumpMapList()

	local portalGunCommand = ""
	local portalGunSecondCommand = ""
	local foundMap = false
	
	foreach (index, map in MapPlayOrder)
	{
		if (MapPlayOrder[index] == FIRST_MAP_WITH_GUN)
		{
			portalGunCommand = "give_portalgun"
		}		
		else if (MapPlayOrder[index] == FIRST_MAP_WITH_UPGRADE_GUN)
		{
			portalGunSecondCommand = "upgrade_portalgun"
		}
		
		if (GetMapName() == MapPlayOrder[index])
		{
			break
		}
	}

	TryDisplayChapterTitle()
	
	if (portalGunCommand != "" && GetMapName())	{
		EntFire("command", "Command", portalGunCommand, 0.0)
		EntFire("@command", "Command", portalGunCommand, 0.0)
	}

	if (portalGunSecondCommand != "") {
		EntFire("command", "Command", portalGunSecondCommand, 0.1)
		EntFire("@command", "Command", portalGunSecondCommand, 0.1)
	}
	
}

// --------------------------------------------------------
// TransitionFromMap
// --------------------------------------------------------
function DumpMapList()
{
	if(DBG)
	{
		local mapcount = 0
		
		printl("================DUMPING MAP PLAY ORDER")
		
		foreach( index, map in MapPlayOrder )
		{
			// weed out our transitions
			if( MapPlayOrder[index].find("@") == null )
			{
				if( GetMapName() == MapPlayOrder[index] )
				{
					printl( mapcount + " " + MapPlayOrder[index] + " <--- You Are Here" )
				}
				else
				{
					printl( mapcount + " " + MapPlayOrder[index] )
				}
				mapcount++
			}
			
		}
		printl( mapcount + " maps total." )
		
		printl("================END DUMP")
	}
}

// --------------------------------------------------------
// TransitionFromMap
// --------------------------------------------------------
function TransitionFromMap()
{
	local next_map = null
	foreach( index, map in MapPlayOrder )
	{
		if( GetMapName() == MapPlayOrder[index] )
		{
			// make good
			local skipIndex = index
			for(local i=0;i<2;i+=1)
			{
				if( skipIndex + 1 < MapPlayOrder.len() )
				{
					if( MapPlayOrder[skipIndex + 1].find("@") != null )
					{
						skipIndex++
					}
					else
					{
						break
					}
				}
			}		
			
			if( ( skipIndex + 1 < MapPlayOrder.len() ) &&
			    ( GetMapName() != LAST_PLAYTEST_MAP  )    )
			{
				next_map = MapPlayOrder[ skipIndex + 1 ]
				if(DBG) printl( "Map " + GetMapName() + " connects to " + next_map )

				if ( Entities.FindByName( null, "@changelevel" ) == null )
				{
					if(DBG) printl( "('@changelevel' entity missing, using 'map' command instead)" )
					SendToConsole( "map " + next_map );
				}
				else
				{
					EntFire( "@changelevel", "Changelevel", next_map, 0.0 )			
				}
			}
		}
	}
	
	if ( next_map == null )
	{
		if(DBG) printl( "Map " + GetMapName() + " is the last map" )
		EntFire( "end_of_playtest_text", "display", 0 )
		EntFire( "@end_of_playtest_text", "display", 0 )

		// If we are in the map loop and at the end of the list, start over at the beginning
		if ( LoopSinglePlayerMaps() )
		{
			printl( "MAPLOOP: No more maps, restarting loop." )
			next_map = MapPlayOrder[0]
			if ( Entities.FindByName( null, "@changelevel" ) == null )
			{
				SendToConsole( "map " + next_map );
			}
			else
			{
				EntFire( "@changelevel", "Changelevel", next_map, 0.0 )			
			}
		}
	}

	printl( "" )
}

// --------------------------------------------------------
// MakeBatFile - dumps the map list in a formatted way, for easy recompilin'
// --------------------------------------------------------
function MakeBatFile()
{
		local mapcount = 0
		
		printl("================DUMPING maps formatted for batch file")
		
		foreach( index, map in MapPlayOrder )
		{
			printl( "call build " + MapPlayOrder[index] )	
		}
		
		foreach( index, map in MapPlayOrder )
		{
			printl( "call p2_buildcubemaps " + MapPlayOrder[index] )	
		}
}

// this lets the elevator know that we are ready to transition.
function TransitionReady()
{
	::TransitionReady <- 1	
}
