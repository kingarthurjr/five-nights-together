// Check if this event came from NekoPresence
if (async_load[? "event_type"] == "DiscordRichPresence") 
{
    // If the game is already open and they click Join on an invite
    if (async_load[? "discord_event"] == "join") 
    {
        global.target_room_code = async_load[? "join_secret"];
        room_goto(rm_code_search); 
    }
}