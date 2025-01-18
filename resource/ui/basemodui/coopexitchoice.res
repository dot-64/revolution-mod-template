"Resource/UI/coopexitchoice.res"
{
	"CoopExitChoice"
	{
		"ControlName"		"Frame"
		"fieldName"			"CoopExitChoice"
		"xpos"				"0"
		"ypos"				"0"
		"wide"				"5"
		"tall"				"2"
		"autoResize"		"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"dialogstyle"		"1"
	}

	"BtnExitToMainMenu"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnExitToMainMenu"
		"command"				"BtnExitToMainMenu"
		"xpos"					"0"
		"ypos"					"25"
		"wide"					"0"
		"tall"					"20"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnGoToHub"
		"navDown"				"BtnGoToHub"
		"labelText"				"#PORTAL2_InGameMainMenu_ExitToMainMenu"
		"style"					"DefaultButton"
	}
	
	"BtnGoToHub"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnGoToHub"
		"command"				"BtnGoToHub"
		"xpos"					"0"
		"ypos"					"50"
		"wide"					"0"
		"tall"					"20"
		"visible"				"1"	
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnExitToMainMenu"
		"navDown"				"BtnExitToMainMenu"
		"labelText"				"#Portal2UI_GoToHub"
		"style"					"DefaultButton"
	}
}
