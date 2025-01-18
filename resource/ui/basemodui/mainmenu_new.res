"Resource/UI/MainMenu.res"
{
	"MainMenu"
	{
		"ControlName"				"Frame"
		"fieldName"					"MainMenu"
		"xpos"						"0"
		"ypos"						"0"
		"wide"						"f0"
		"tall"						"f0"
		"autoResize"				"0"
		"pinCorner"					"0"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"0"
		"PaintBackgroundType"		"0"
	}

	// New game
	"BtnNewGame"
	{
		"ControlName"				"BaseModHybridButton"
		"fieldName"					"BtnNewGame"
		"xpos"						"70"		[!$GAMECONSOLE]
		"ypos"						"250"		[!$GAMECONSOLE]	
		
		"wide"						"200"
		"tall"						"20"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"1"
		"navUp"						"BtnQuit"
		"navDown"					"BtnLoadGame"
		"labelText"					"#REVOLUTION_NEW_GAME"
		"style"						"MainMenuButton"
		"command"					"Extras"
		"ActivationType"			"1"
	}

	// Load game
	"BtnLoadGame"
	{
		"ControlName"				"BaseModHybridButton"
		"fieldName"					"BtnLoadGame"
		"xpos"						"70"		[!$GAMECONSOLE]
		"ypos"						"280"		[!$GAMECONSOLE]	
		"wide"						"200"
		"tall"						"20"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"2"
		"navUp"						"BtnNewGame"
		"navDown"					"BtnOptions"
		"labelText"					"#REVOLUTION_LOAD_GAME"
		"style"						"MainMenuButton"
		"command"					"SoloPlay"
		"ActivationType"			"1"
	}

	// Options
	"BtnOptions"
	{
		"ControlName"				"BaseModHybridButton"
		"fieldName"					"BtnOptions"
		"xpos"						"70"		[!$GAMECONSOLE]
		"ypos"						"310"		[!$GAMECONSOLE]
		"wide"						"200"
		"tall"						"20"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"3"
		"navUp"						"BtnLoadGame"
		"navDown"					"BtnQuit"
		"labelText"					"#REVOLUTION_OPTIONS"
		"style"						"MainMenuButton"
		"command"					"Options"
		"ActivationType"			"1"

	}

	// Exit
	"BtnQuit" [!$GAMECONSOLE]
	{
		"ControlName"				"BaseModHybridButton"
		"fieldName"					"BtnQuit"
		"xpos"						"70"		[!$GAMECONSOLE]
		"ypos"						"370"		[!$GAMECONSOLE]
		"wide"						"200"
		"tall"						"20"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"4"
		"navUp"						"BtnOptions"
		"navDown"					"BtnNewGame"
		"labelText"					"#REVOLUTION_QUIT"
		"style"						"MainMenuButton"
		"command"					"QuitGame"
		"ActivationType"			"1"
	}
}
