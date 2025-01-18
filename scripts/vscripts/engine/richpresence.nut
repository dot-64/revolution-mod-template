// This script is called from engine code to update rich presence.
// It runs whenever the client requests an update.

function UpdateDiscordState(activity)
{
    activity.SetKeyString("name", "Portal: Revolution")
    activity.SetKeyString("details", "Hi!")
}

function UpdateSteamState(activity)
{
    activity.SetKeyString("steam_display", "Hello!")
}

local state = RichPresence.GetState()
local match = RichPresence.GetMatchInfo()

UpdateDiscordState(state.FindKey("discord", true))
UpdateSteamState(state.FindKey("steam", true))
