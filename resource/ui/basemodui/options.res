"Resource/UI/options.res"
{
	"Options"
	{
		"ControlName"		"Frame"
		"fieldName"			"Options"
		"xpos"				"0"
		"ypos"				"0"
		"wide"				"5"		[!$GAMECONSOLE]
		"tall"				"3"		[!$GAMECONSOLE]
		"autoResize"		"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
		"dialogstyle"		"1"
	}

	"BtnAudio"
	{
		"ControlName"				"BaseModHybridButton"
		"fieldName"					"BtnAudio"
		"xpos"						"0"
		"ypos"						"25"
		"wide"						"0"
		"tall"						"20"
		"autoResize"				"0"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"1"
		"navUp"						"BtnController"
		"navDown"					"BtnVideo"
		"labelText"					"#GameUI_Audio"
		"style"						"DefaultButton"
		"command"					"Audio"
		"ActivationType"			"1"
	}

	"BtnVideo"
	{
		"ControlName"				"BaseModHybridButton"
		"fieldName"					"BtnVideo"
		"xpos"						"0"
		"ypos"						"50"
		"wide"						"0"
		"tall"						"20"
		"autoResize"				"0"
		"visible"					"1"
		"enabled"					"1"
		"tabPosition"				"2"
		"navUp"						"BtnAudio"
		"navDown"					"BtnKeyboardMouse"
		"labelText"					"#GameUI_Video"
		"style"						"DefaultButton"
		"command"					"Video"
		"ActivationType"			"1"
	}

	"BtnKeyboardMouse"
	{
		"ControlName"				"BaseModHybridButton"
		"fieldName"					"BtnKeyboardMouse"
		"xpos"						"0"
		"ypos"						"75"
		"wide"						"0"
		"tall"						"20"
		"tabPosition"				"3"
		"navUp"						"BtnVideo"
		"navDown"					"BtnController"
		"labelText"					"#L4D360UI_KeyboardMouse"
		"style"						"DefaultButton"
		"command"					"KeyboardMouse"
		"ActivationType"			"1"
	}

	"BtnController"
	{
		"ControlName"				"BaseModHybridButton"
		"fieldName"					"BtnController"
		"xpos"						"0"
		"ypos"						"100"
		"wide"						"0"
		"tall"						"20"
		"tabPosition"				"4"
		"navUp"						"BtnKeyboardMouse"
		"navDown"					"BtnAudio"
		"labelText"					"#L4D360UI_Controller"
		"style"						"DefaultButton"
		"command"					"Controller"
		"ActivationType"			"1"
	}
}