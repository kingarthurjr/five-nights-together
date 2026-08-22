// 1. Capture the event type directly from the map
var _type = async_load[? "event_type"];

// 2. Switch based on the specific Discord event
switch (_type)
{
    case "DiscordJoinGame":
        // This is exactly what the documentation says to look for
        var _secret = async_load[? "join_secret"];
        
        if (!is_undefined(_secret) && _secret != "")
        {
            if room = rm_menu or room = rm_options or room = rm_extras
			{
				instance_create(0,0,obj_i_login);
			}
			else
			{
				global.target_room_code = _secret;
	            room_goto(rm_online_lobby);
			}
        }
        break;

    case "DiscordJoinRequest":
        // If someone clicks "Ask to Join", you would handle it here with np_reply
        break;

    case "DiscordError":
        show_debug_message("Discord Error: " + async_load[? "error_message"]);
        break;
}