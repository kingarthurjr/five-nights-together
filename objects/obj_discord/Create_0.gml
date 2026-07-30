// Initialize NekoPresence - REPLACE WITH YOUR DISCORD CLIENT ID
np_initdiscord("1228807294549098586",true,"0");

// This global variable will hold the Lobby ID when someone clicks "Join"
global.discord_target_lobby = "";

// Check if the game was launched FROM a Discord invite while closed
if (parameter_count() > 1) 
{
    for (var i = 1; i <= parameter_count(); i++) 
    {
        var param = parameter_string(i);
        if (string_pos("-np-join=", param) != 0) 
        {
            // Extract the Lobby ID from the launch parameter
            global.discord_target_lobby = string_replace(param, "-np-join=", "");
            
            // Go to your server browser room to download the GMnet server list
            // Replace 'rm_server_browser' with your actual server list room name
            room_goto(rm_online_lobby); 
        }
    }
}