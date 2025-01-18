"Resource/UI/portal_challenge_stats_panel.res"
{
	"PortalChallengeStatsPanel"
	{
		"ControlName"		"CPortalChallengeStatsPanel"
		"fieldName"			"PortalChallengeStatsPanel"
		"xpos"				"375"
		"ypos"				"-50"
		"wide"				"125"
		"tall"				"45"
		//"autoResize"		"0"
		"visible"			"1"
		"enabled"			"1"
		//"tabPosition"		"0"
		//"dialogstyle"		"1"
		"bgcolor_override"	"0 255 0 255"
		//"fgcolor_override"	"255 255 255 255"
	}

	"TitleLabel"
	{
		"ControlName"		"Label"
		"fieldName"			"TitleLabel"
		"xpos"				"5"
		"ypos"				"0"
		"wide"				"100"
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			"Final"
		"textAlignment"		"Left"
		"Font"				"GamerTag"
	}
	
	"PortalsLabel"
	{
		"ControlName"		"Label"
		"fieldName"			"PortalsLabel"
		"xpos"				"5"
		"ypos"				"15"
		"wide"				"95"
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			"#P2ChallengeStats_Portals"
		"textAlignment"		"Left"
		"Font"				"ControllerLayout" [$GAMECONSOLE && ($JAPANESE || $KOREAN || $SCHINESE || $TCHINESE)]
		"Font"				"GamerTagStatus"
		"fgcolor_override"	"255 255 255 255"
	}

	"PortalScoreLabel"
	{
		"ControlName"		"Label"
		"fieldName"			"PortalScoreLabel"
		"xpos"				"90"
		"ypos"				"15"
		"wide"				"30"
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			"0"
		"textAlignment"		"East"
		"Font"				"GamerTagStatus"
		"fgcolor_override"	"255 255 255 255"
	}

	"TimeLabel"
	{
		"ControlName"		"Label"
		"fieldName"			"TimeLabel"
		"xpos"				"5"
		"ypos"				"30"
		"wide"				"70"
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			"#P2ChallengeStats_Time"
		"textAlignment"		"Left"
		"Font"				"GamerTagStatus"
		"fgcolor_override"	"255 255 255 255"
	}

	"TimeScoreLabel"
	{
		"ControlName"		"Label"
		"fieldName"			"TimeScoreLabel"
		"xpos"				"45"
		"ypos"				"30"
		"wide"				"75"
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			"00:00"
		"textAlignment"		"East"
		"Font"				"ControllerLayout" [$GAMECONSOLE && ($JAPANESE || $KOREAN || $SCHINESE || $TCHINESE)]
		"Font"				"GamerTagStatus"
		"fgcolor_override"	"255 255 255 255"
	}

}
