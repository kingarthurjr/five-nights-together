// Check if this event came from NekoPresence
if (async_load[? "event_type"] == "DiscordRichPresence") 
{
    // Check if the player clicked "Join" while the game was already running
    if (async_load[? "discord_event"] == "join") 
    {
        // Grab the Lobby ID the host sent
        global.discord_target_lobby = async_load[? "join_secret"];
        
        // Go to your server browser room to download the GMnet server list
        room_goto(rm_online_lobby); 
    }
}