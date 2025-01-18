"Resource/HudLayout.res"
{
	HudIndicator
	{
		"fieldName" "HudIndicator"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudSaveStatus
	{
		"fieldName" "HudSaveStatus"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	SlowTime
	{
		"fieldName" "SlowTime"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudCrosshair
	{
		"fieldName" "HudCrosshair"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	ScorePanel
	{
		"fieldName" "ScorePanel"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudMOTD
	{
		"fieldName" "HudMOTD"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudMessage
	{
		"fieldName" "HudMessage"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudMenu
	{
		"fieldName" "HudMenu"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudCloseCaption
	{
		"fieldName" "HudCloseCaption"
		"visible"	"1"
		"enabled"	"1"
		"xpos"		"c-600"
		"ypos"		"600"
		"wide"		"1200"
		"tall"		"300"

		"BgAlpha"	"170"

		"GrowTime"		"0.25"
		"ItemHiddenTime"	"0.2"  // Nearly same as grow time so that the item doesn't start to show until growth is finished
		"ItemFadeInTime"	"0.15"	// Once ItemHiddenTime is finished, takes this much longer to fade in
		"ItemFadeOutTime"	"0.3"
		"topoffset"		"0"
	}

	HudSubtitles
	{

	}

	HudChat
	{
		"fieldName" "HudChat"
		"visible" "0"
		"enabled" "1"
		"xpos"	"0"
		"ypos"	"0"
		"wide"	 "4"
		"tall"	 "4"
	}

	HUDQuickInfo
	{
		"fieldName" "HUDQuickInfo"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"		[$GAMECONSOLE]
		"tall"	 "480"		[$GAMECONSOLE]
		"wide"	 "f0"		[!$GAMECONSOLE]
		"tall"	 "f0"		[!$GAMECONSOLE]
	}

	HudAnimationInfo
	{
		"fieldName" "HudAnimationInfo"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudPortalCrosshair
	{
		"fieldName" "HudViewfinder"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudPredictionDump
	{
		"fieldName" "HudPredictionDump"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HudHintDisplay
	{
		"fieldName"				"HudHintDisplay"
		"visible"				"0"
		"enabled"				"1"
		"xpos"					"c-240"
		"ypos"					"c60"
		"xpos"	"r148"	[$GAMECONSOLE]
		"ypos"	"r338"	[$GAMECONSOLE]
		"wide"					"480"
		"tall"					"100"
		"HintSize"				"1"
		"text_xpos"				"8"
		"text_ypos"				"8"
		"center_x"				"0"	// center text horizontally
		"center_y"				"-1"	// align text on the bottom
		"paintbackground"		"0"
	}	

	HudHintKeyDisplay
	{
		"fieldName"	"HudHintKeyDisplay"
		"visible"	"0"
		"enabled" 	"1"
		"xpos"		"r120"	[$WIN32]
		"ypos"		"r340"	[$WIN32]
		"xpos"		"r148"	[$GAMECONSOLE]
		"ypos"		"r338"	[$GAMECONSOLE]
		"wide"		"100"
		"tall"		"200"
		"text_xpos"	"8"
		"text_ypos"	"8"
		"text_xgap"	"8"
		"text_ygap"	"8"
		"TextColor"	"255 170 0 220"

		"PaintBackgroundType"	"2"
	}

	HudCredits
	{
		"fieldName"	"HudCredits"
		"TextFont"	"Default"
		"visible"	"1"
		"xpos"	"0"
		"ypos"	"0"
		"wide"	"640"
		"tall"	"480"
		"TextColor"	"255 255 255 192"

	}
	
	HudCommentary
	{
		"fieldName" "HudCommentary"
		"xpos"	"c-450"
		"ypos"	"750" // This gets overridden by the subtitle values below but still leave it at a sensible value by default
		"wide"	"900"
		"tall"  "80"
		"visible" "1"
		"enabled" "1"
		
		"PaintBackgroundType"	"2"

		// New for portal revolution anniversary update: Move the commentary hud underneath the subtitles when subtitles are enabled so the commentary number and progress bar are still visible
		"subtitle_ypos"	"925" 
		"nosubtitle_ypos" "750" 

		"bar_xpos"		"100"
		"bar_ypos"		"55"
		"bar_height"	"12"
		"bar_width"		"800"
		"bar_gap" 		"3"
		"speaker_xpos"	"100"
		"speaker_ypos"	"15"
		"count_xpos_from_right"	"0"	// Counts from the right side
		"count_ypos"	"15"
		
		"icon_texture"	"vgui/hud/icon_commentary_highres"
		"icon_xpos"		"0"
		"icon_ypos"		"0"		
		"icon_width"	"80"
		"icon_height"	"80"
	}
	
	HudHDRDemo
	{
		"fieldName" "HudHDRDemo"
		"xpos"	"0"
		"ypos"	"0"
		"wide"	"640"
		"tall"  "480"
		"visible" "1"
		"enabled" "1"
		
		"Alpha"	"255"
		"PaintBackgroundType"	"2"
		
		"BorderColor"	"0 0 0 255"
		"BorderLeft"	"16"
		"BorderRight"	"16"
		"BorderTop"		"16"
		"BorderBottom"	"64"
		"BorderCenter"	"0"
		
		"TextColor"		"255 255 255 255"
		"LeftTitleY"	"422"
		"RightTitleY"	"422"
	}

	AchievementNotificationPanel	
	{
		"fieldName"				"AchievementNotificationPanel"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"0"
		"ypos"					"180"
		"wide"					"f10"	[$WIN32]
		"wide"					"f60"	[$GAMECONSOLE]
		"tall"					"100"
	}
	
	CHudCoopPingIndicator
	{
		"fieldName" "CHudCoopPingIndicator"
		"visible" "0"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}
	
	HudControlHelper
	{
		"fieldName" "HudControlHelper"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}
	
	HudViewfinder
	{
		"fieldName" "HudViewfinder"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	MultiplayerBasicInfo
	{
		"fieldName" "MultiplayerBasicInfo"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}
	
	HudTrain
	{
		"fieldName" "HudTrain"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}
	
	HudVehicle
	{
		"fieldName" "HudVehicle"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}
	
	HudWeapon
	{
		"fieldName" "HudWeapon"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}

	HUDAutoAim
	{
		"fieldName" "HUDAutoAim"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"	[$WIN32]
		"tall"	 "480"	[$WIN32]
		"wide"	 "960"	[$GAMECONSOLE]
		"tall"	 "720"	[$GAMECONSOLE]
	}
	
	HudHistoryResource	[$WIN32]
	{
		"fieldName" "HudHistoryResource"
		"visible" "1"
		"enabled" "1"
		"xpos"	"r252"
		"ypos"	"40"
		"wide"	 "248"
		"tall"	 "320"

		"history_gap"	"56"
		"icon_inset"	"38"
		"text_inset"	"36"
		"text_inset"	"26"
		"NumberFont"	"HudNumbersSmall"
	}
	HudHistoryResource	[$GAMECONSOLE]
	{
		"fieldName" "HudHistoryResource"
		"visible" "1"
		"enabled" "1"
		"xpos"	"r300"
		"ypos"	"40" 
		"wide"	 "248"
		"tall"	 "240"

		"history_gap"	"50"
		"icon_inset"	"38"
		"text_inset"	"36"
		"NumberFont"	"HudNumbersSmall"
	}
	
	HudGeiger
	{
		"fieldName" "HudGeiger"
		"visible" "1"
		"enabled" "1"
		"wide"	 "640"
		"tall"	 "480"
	}
	
	TauntEarned
	{
		"fieldName"				"TauntEarned"
		"visible"				"1"
		"enabled"				"1"
		"xpos"					"0"
		"ypos"					"r50"
		"wide"					"250"
		"tall"					"50"
	}
	
	RadialMenu
	{
		"fieldName"				"RadialMenu"
		"visible"				"0"
		"enabled"				"0"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"1"
		"wide"					"f0"
		"tall"					"f0"
	}
}
