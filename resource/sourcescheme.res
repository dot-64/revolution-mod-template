///////////////////////////////////////////////////////////
// Tracker scheme resource file
//
// sections:
//		Colors			- all the colors used by the scheme
//		BaseSettings	- contains settings for app to use to draw controls
//		Fonts			- list of all the fonts used by app
//		Borders			- description of all the borders
//
///////////////////////////////////////////////////////////
Scheme
{
	//////////////////////// COLORS ///////////////////////////
	// color details
	// this is a list of all the colors used by the scheme
	Colors
	{
		// base colors
		"White"				"255 255 255 255"
		"OffWhite"			"216 216 216 255"
		"DullWhite"			"142 142 142 255"
		"Orange"			"255 155 0 255"
		"TransparentBlack"	"0 0 0 128"
		"Black"				"0 0 0 255"

		"Blank"				"0 0 0 0"

		"DefaultBackground" 	"40 40 40 230"
		"DefaultText"			"250 250 250 255"
		"DefaultTextDisabled"	"130 130 130 255"
		
		"SteamLightGreen"	"157 194 80 255"
		"AchievementsLightGrey"		"79 79 79 255"
		"AchievementsDarkGrey"		"55 55 55 255"
		"AchievementsInactiveFG"	"130 130 130 255"
		
		"ScrollBarGrey"		"51 51 51 255"
		"ScrollBarHilight"	"110 110 110 255"
		"ScrollBarDark"		"38 38 38 255"
	}

	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		// vgui_controls color specifications
		Border.Bright					"200 200 200 196"	// the lit side of a control
		Border.Dark						"90 90 90 196"		// the dark/unlit side of a control
		Border.Selection				"0 0 0 196"			// the additional border color for displaying the default/selected button

		Button.TextColor				"White"
		Button.BgColor					"Blank"
		Button.ArmedTextColor			"White"
		Button.ArmedBgColor				"Blank"				[$WIN32]
		Button.ArmedBgColor				"190 115 0 255"		[$GAMECONSOLE]
		Button.DepressedTextColor		"White"
		Button.DepressedBgColor			"Blank"
		Button.FocusBorderColor			"Black"
		
		CheckButton.TextColor			"White"
		CheckButton.SelectedTextColor	"White"
		CheckButton.BgColor				"Blank"
		CheckButton.Border1  			"Border.Bright" 		// the left checkbutton border
		CheckButton.Border2  			"Border.Bright"		// the right checkbutton border
		CheckButton.Check				"White"				// color of the check itself
		CheckButton.DisabledFgColor		"DullWhite"
		CheckButton.DisabledBgColor		"Blank"
		CheckButton.HighlightFgColor	"Orange"

		ComboBoxButton.ArrowColor		"DullWhite"
		ComboBoxButton.ArmedArrowColor	"White"
		ComboBoxButton.BgColor			"Blank"
		ComboBoxButton.DisabledBgColor	"Blank"

		Frame.TitleTextInsetX			16
		Frame.ClientInsetX				8
		Frame.ClientInsetY				6
		Frame.BgColor					"DefaultBackground"
		Frame.OutOfFocusBgColor			"DefaultBackground"
		Frame.FocusTransitionEffectTime	"0.1"							// time it takes for a window to fade in/out on focus/out of focus
		Frame.TransitionEffectTime		"0.1"							// time it takes for a window to fade in/out on open/close
		Frame.AutoSnapRange				"0"
		FrameGrip.Color1				"200 200 200 196"
		FrameGrip.Color2				"0 0 0 196"
		FrameTitleButton.FgColor		"200 200 200 196"
		FrameTitleButton.BgColor		"Blank"
		FrameTitleButton.DisabledFgColor	"255 255 255 192"
		FrameTitleButton.DisabledBgColor	"Blank"
		FrameSystemButton.FgColor		"Blank"
		FrameSystemButton.BgColor		"Blank"
		FrameSystemButton.Icon			""
		FrameSystemButton.DisabledIcon	""
		FrameTitleBar.Font				"UiBold"
		FrameTitleBar.TextColor			"White"
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.DisabledTextColor	"255 255 255 192"
		FrameTitleBar.DisabledBgColor	"Blank"

		GraphPanel.FgColor				"White"
		GraphPanel.BgColor				"TransparentBlack"

		Label.TextDullColor				"DefaultText"
		Label.TextColor					"DefaultText"
		Label.TextBrightColor			"White"
		Label.SelectedTextColor			"White"
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"DefaultTextDisabled"
		Label.DisabledFgColor2			"Blank"

		ListPanel.TextColor					"DefaultText"
		ListPanel.TextBgColor				"Blank"
		ListPanel.BgColor					"TransparentBlack"
		ListPanel.SelectedTextColor			"Black"
		ListPanel.SelectedBgColor			"Orange"
		ListPanel.SelectedOutOfFocusBgColor	"255 155 0 128"
		ListPanel.EmptyListInfoTextColor	"OffWhite"

		Menu.TextColor					"White"
		Menu.BgColor					"160 160 160 64"
		Menu.ArmedTextColor				"Black"
		Menu.ArmedBgColor				"Orange"
		Menu.TextInset					"6"

		Panel.FgColor					"DullWhite"
		Panel.BgColor					"Blank"

		ProgressBar.FgColor				"White"
		ProgressBar.BgColor				"TransparentBlack"

		PropertySheet.TextColor			"OffWhite"
		PropertySheet.SelectedTextColor	"White"
		PropertySheet.TransitionEffectTime	"0.25"	// time to change from one tab to another

		RadioButton.TextColor			"DullWhite"
		RadioButton.SelectedTextColor	"White"

		RichText.TextColor				"OffWhite"
		RichText.BgColor				"TransparentBlack"
		RichText.SelectedTextColor		"Black"
		RichText.SelectedBgColor		"Orange"

		ScrollBar.Wide					17
	  	ScrollBarNobBorder.Outer 			"ScrollBarDark"
		ScrollBarNobBorder.Inner 			"ScrollBarGrey"
		ScrollBarNobBorderHover.Inner 			"ScrollBarGrey"
		ScrollBarNobBorderDragging.Inner 		"ScrollBarHilight"

		ScrollBarButton.FgColor				"ScrollBarHilight"
		ScrollBarButton.BgColor				"ScrollBarGrey"
		ScrollBarButton.ArmedFgColor			"ScrollBarHilight"
		ScrollBarButton.ArmedBgColor			"ScrollBarGrey"
		ScrollBarButton.DepressedFgColor		"ScrollBarHilight"
		ScrollBarButton.DepressedBgColor		"ScrollBarGrey"

		ScrollBarSlider.Inset				1			// Number of pixels to inset scroll bar nob
		ScrollBarSlider.FgColor				"ScrollBarGrey"			// nob color
		ScrollBarSlider.BgColor				"ScrollBarDark"	// slider background color
		ScrollBarSlider.NobFocusColor			"ScrollBarHilight"		// nob mouseover color
		ScrollBarSlider.NobDragColor			"ScrollBarHilight"		// nob active drag color

		SectionedListPanel.HeaderTextColor	"White"
		SectionedListPanel.HeaderBgColor	"Blank"
		SectionedListPanel.DividerColor		"Black"
		SectionedListPanel.TextColor		"DullWhite"
		SectionedListPanel.BrightTextColor	"White"
		SectionedListPanel.BgColor			"TransparentBlack"
		SectionedListPanel.SelectedTextColor			"Black"
		SectionedListPanel.SelectedBgColor				"Orange"
		SectionedListPanel.OutOfFocusSelectedTextColor	"Black"
		SectionedListPanel.OutOfFocusSelectedBgColor	"255 155 0 128"

		Slider.NobColor				"108 108 108 255"
		Slider.NobFocusColor			"200 200 200 255"
		Slider.TextColor			"180 180 180 255"
		Slider.TrackColor			"31 31 31 255"
		Slider.DisabledTextColor1	"OffWhite"
		Slider.DisabledTextColor2	"OffWhite"

		TextEntry.TextColor			"OffWhite"
		TextEntry.BgColor			"26 26 26"
		TextEntry.CursorColor		"OffWhite"
		TextEntry.DisabledTextColor	"DullWhite"
		TextEntry.DisabledBgColor	"Blank"
		TextEntry.SelectedTextColor	"Black"
		TextEntry.SelectedBgColor	"Orange"
		TextEntry.OutOfFocusSelectedBgColor	"255 155 0 128"
		TextEntry.FocusEdgeColor	"0 0 0 196"

		ToggleButton.SelectedTextColor	"White"

		Tooltip.TextColor			"0 0 0 196"
		Tooltip.BgColor				"Orange"

		TreeView.BgColor			"TransparentBlack"

		WizardSubPanel.BgColor		"Blank"

		// scheme-specific colors
		MainMenu.TextColor			"White"				[$WIN32]
		MainMenu.TextColor			"200 200 200 255"	[$GAMECONSOLE]
		MainMenu.ArmedTextColor		"200 200 200 255"	[$WIN32]
		MainMenu.ArmedTextColor		"White"				[$GAMECONSOLE]
		MainMenu.DepressedTextColor	"192 186 80 255"
		MainMenu.MenuItemHeight		"30"				[$WIN32]
		MainMenu.MenuItemHeight			"22"				[$GAMECONSOLE]
		MainMenu.MenuItemHeight_hidef	"32"				[$GAMECONSOLE]
		MainMenu.Inset				"32"
		MainMenu.Backdrop			"0 0 0 156"

		Console.TextColor			"OffWhite"
		Console.DevTextColor		"White"
		Console.BgColor				"DefaultBackground"
		Console.HistoryBgColor				"DefaultBackground"
		Console.EntryBgColor				"DefaultBackground"
		Console.CompletionBgColor				"DefaultBackground"

		NewGame.TextColor			"White"
		NewGame.FillColor			"0 0 0 255"
		NewGame.SelectionColor		"Orange"			[$WIN32]
		NewGame.SelectionColor		"0 0 0 255"			[$GAMECONSOLE]
		NewGame.DisabledColor		"128 128 128 196"

		MessageDialog.MatchmakingBG			"46 43 42 255"	[$GAMECONSOLE]
		MessageDialog.MatchmakingBGBlack			"22 22 22 255"	[$GAMECONSOLE]
		
		MatchmakingMenuItemTitleColor			"200 184 151 255"	[$GAMECONSOLE]
		MatchmakingMenuItemDescriptionColor		"200 184 151 255"	[$GAMECONSOLE]
	}

	//////////////////////// FONTS /////////////////////////////
	//
	// describes all the fonts
	Fonts
	{
		// fonts are used in order that they are listed
		// fonts listed later in the order will only be used if they fulfill a range not already filled
		// if a font fails to load then the subsequent fonts will replace

		"DebugFixed"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"10"			[!$GAMECONSOLE]
				"tall"		"18"			[$GAMECONSOLE]
				"weight"	"400"
				"antialias" "1"
			}
		}

		"DebugFixedSmall" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"7"	
				"weight"	"400"
				"antialias" "1"
			}
		}

		"DefaultFixedOutline" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		 "Lucida Console"
				"tall"		 "10"
				"weight"	 "0"
				"outline"	 "1"
				"antialias" "1"
			}
		}

		"DefaultFixed" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Lucida Console"
				"tall"		"10"
				"weight"	"0"
				"antialias" "1"
			}
		}

		"DefaultFixedDropShadow" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Lucida Console"
				"tall"		"10"
				"weight"	"0"
				"dropshadow" "1"
				"antialias" "1"
			}
		}

		"Default" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"500"
				"antialias" "1"
			}
		}
		
		"DefaultBold" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"1000"
				"antialias" "1"
			}
		}
		
		"DefaultUnderline" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"500"
				"underline" "1"
				"antialias" "1"
			}
		}
		
		"DefaultSmall" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"12"
				"weight"	"0"
				"antialias" "1"
			}
		}
		
		"DefaultSmallDropShadow" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"13"
				"weight"	"0"
				"dropshadow" "1"
				"antialias" "1"
			}
		}

		"DefaultVerySmall" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"12"
				"weight"	"0"
				"antialias" "1"
			}
		}

		"DefaultLarge" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"18"
				"weight"	"0"
				"antialias" "1"
			}
		}
		
		"UiBold" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"14"
				"weight"	"1000"
				"antialias" "1"
			}
		}
		
		"MenuLarge" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"16"
				"weight"	"600"
				"antialias" "1"
			}
		}
		
		"AchievementTitleFont" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"1200"
				"antialias" "1"
				"outline" "1"
			}
		}
		
		"AchievementDescriptionFont" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"15"
				"weight"	"1200"
				"antialias" "1"
				"outline"	"1"
				"yres"		"0 480"
			}
			
			"2"
			{
				"name"		"Verdana"
				"tall"		"20"
				"weight"	"1200"
				"antialias" "1"
				"outline"	 "1"
				"yres"		"481 10000"
			}
		}
			
		"ConsoleText" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"JetBrains Mono NL Regular"
				"tall"		"16"
				"weight"	"500"
				"antialias" "1"
			}
		}

		// this is the symbol font
		"Marlett" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Marlett"
				"tall"		"14"
				"weight"	"0"
				"symbol"	"1"
			}
		}

		"Trebuchet24" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"24"
				"weight"	"900"
			}
		}

		"Trebuchet20" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"20"
				"weight"	"900"
			}
		}

		"Trebuchet18" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"18"
				"weight"	"900"
			}
		}

		// HUD numbers
		// We use multiple fonts to 'pulse' them in the HUD, hence the need for many of near size
		"HUDNumber" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"40"
				"weight"	"900"
			}
		}
		
		"HUDNumber1" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"41"
				"weight"	"900"
			}
		}
		
		"HUDNumber2" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"42"
				"weight"	"900"
			}
		}

		"HUDNumber3" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"43"
				"weight"	"900"
			}
		}

		"HUDNumber4" [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"44"
				"weight"	"900"
			}
		}

		"HUDNumber5" [!$GAMECONSOLE]
		{
			"1" 
			{
				"name"		"Trebuchet MS"
				"tall"		"45"
				"weight"	"900"
			}
		}

		TitleFont [!$GAMECONSOLE]
		{
			"1" 
			{
				"name"		"HalfLife2"
				"tall"		"72"
				"weight"	"400"
				"antialias"	"1"
				"custom"	"1"
			}
		}

		TitleFont2 [!$GAMECONSOLE]
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"120"
				"weight"	"400"
				"antialias"	"1"
				"custom"	"1"
			}
		}
		
		AchievementItemTitle	[!$GAMECONSOLE]
		{
			"1"
			{
				"name"			"Arial"
				"weight"		"1500"
				"tall"			"16"
				"antialias"		"1"
			}
		}
		
		AchievementItemDescription	[!$GAMECONSOLE]
		{
			"1"
			{
				"name"			"Arial"
				"weight"		"1000"
				"tall"			"14"
				"antialias"		"1"
			}
		}
	}

	//
	//////////////////// BORDERS //////////////////////////////
	//
	// describes all the border types
	Borders
	{
		BaseBorder		DarkBorder
		ButtonBorder	DarkBorder
		ButtonDepressedBorder	DarkBorder
		ButtonKeyFocusBorder	DarkBorder
		ComboBoxBorder	DarkBorder
		MenuBorder		DarkBorder
		BrowserBorder	DarkBorder
		ScrollBarButtonBorder	DarkBorder
		ScrollBarButtonDepressedBorder	DarkBorder
		PropertySheetBorder	DarkBorder

		FrameBorder
		{
			// 0 = Filled
			// 1 = Textured
			// 2 = Rounded
			"backgroundtype" "0"
		}

		NoBorder
		{
			"backgroundtype" "0"
		}

		DepressedBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
		BrightBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
		DarkBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}
		RaisedBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}
		
		TitleButtonBorder
		{
			"backgroundtype" "0"
		}

		TitleButtonDisabledBorder
		{
			"backgroundtype" "0"
		}

		TitleButtonDepressedBorder
		{
			"backgroundtype" "0"
		}
		
		ScrollBarSliderBorderHover ScrollBarSliderBorder
		ScrollBarSliderBorderDragging ScrollBarSliderBorder
		
		TabBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

		}

		TabActiveBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

		}


		ToolTipBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}
	}

	//////////////////////// CUSTOM FONT FILES /////////////////////////////
	//
	// specifies all the custom (non-system) font files that need to be loaded to service the above described fonts
	CustomFontFiles [!$GAMECONSOLE]
	{
		"1"		"resource/HALFLIFE2.vfont"	
		"2"		"vgui/fonts/marlett.ttf"	[$OSX||$LINUX]
		"2"		"vgui/fonts/mono.ttf"
	}
}
