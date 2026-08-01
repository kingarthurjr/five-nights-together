// Initialize NekoPresence - REPLACE WITH YOUR DISCORD CLIENT ID
np_initdiscord("1228807294549098586",true,"0");

// Prepare the target code variable
global.target_room_code = "";

// Check if the game was launched from a closed state via Discord invite
if (parameter_count() > 1) 
{
    for (var i = 1; i <= parameter_count(); i++) 
    {
        var param = parameter_string(i);
        if (string_pos("-np-join=", param) != 0) 
        {
            // Extract the 5-letter code and go to the search room
            global.target_room_code = string_replace(param, "-np-join=", "");
            room_goto(rm_code_search); 
        }
    }
}