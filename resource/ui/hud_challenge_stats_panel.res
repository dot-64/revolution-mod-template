"Resource/UI/hud_challenge_stats_panel.res"
{
	
	"PortalsLabel"
	{
		"ControlName"		"Label"
		"fieldName"			"PortalsLabel"
		"xpos"				"5"
		"ypos"				"5"
		"wide"				"98"
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			"#P2ChallengeStats_Portals"
		"textAlignment"		"Left"
		"Font"				"ControllerLayout" [$GAMECONSOLE && ($JAPANESE || $KOREAN || $SCHINESE || $TCHINESE)]
		"Font"				"GamerTag"
	}

	"PortalCountLabel"
	{
		"ControlName"		"Label"
		"fieldName"			"PortalCountLabel"
		"xpos"				"103"
		"ypos"				"5"
		"wide"				"27"
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			"0"
		"textAlignment"		"East"
		"Font"				"ControllerLayout" [$GAMECONSOLE && ($JAPANESE || $KOREAN || $SCHINESE || $TCHINESE)]
		"Font"				"GamerTag"
	}

	"TimeLabel"
	{
		"ControlName"		"Label"
		"fieldName"			"TimeLabel"
		"xpos"				"5"
		"ypos"				"25"
		"wide"				"55"
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			"#P2ChallengeStats_Time"
		"textAlignment"		"Left"
		"Font"				"ControllerLayout" [$GAMECONSOLE && ($JAPANESE || $KOREAN || $SCHINESE || $TCHINESE)]
		"Font"				"GamerTag"
	}

	"TimeCountLabel"
	{
		"ControlName"		"Label"
		"fieldName"			"TimeCountLabel"
		"xpos"				"55"
		"ypos"				"25"
		"wide"				"75"
		"tall"				"15"
		"visible"			"1"
		"enabled"			"1"
		"labelText"			"00:00"
		"textAlignment"		"East"
		"Font"				"ControllerLayout" [$GAMECONSOLE && ($JAPANESE || $KOREAN || $SCHINESE || $TCHINESE)]
		"Font"				"GamerTag"
	}

}
