"Resource/UI/SinglePlayer.res"
{
	"SinglePlayer"
	{
		"ControlName"			"Frame"
		"fieldName"				"SinglePlayer"
		"xpos"					"0"
		"ypos"					"0"
		"wide"					"6"
		"tall"					"2"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"dialogstyle"			"1"
	}

	"BtnContinueGame"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnContinueGame"
		"command"				"BtnContinueGame"
		"xpos"					"0"
		"ypos"					"25"
		"wide"					"0"
		"tall"					"20"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnLoadGame"
		"navDown"				"BtnLoadGame"
		"labelText"				"#pr_load_last"
		"style"					"DefaultButton"
	}

	"BtnLoadGame"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnLoadGame"
		"command"				"OpenLoadGameDialog"
		"xpos"					"0"
		"ypos"					"50"
		"wide"					"0"
		"tall"					"20"
		"visible"				"1"	
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"					"BtnContinueGame"
		"navDown"				"BtnContinueGame"
		"labelText"				"#pr_select_save"
		"style"					"DefaultButton"
	}
}