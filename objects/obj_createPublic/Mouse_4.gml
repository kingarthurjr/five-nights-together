audio_play_sound(choose(snd_click1,snd_click2,snd_click3),10,false);

// 1. Ensure GameMaker generates truly random numbers
randomize(); 

var new_code = "11111";
/*var is_unique = false;
var list = global.udphp_downloadlist;
var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

// 2. The Uniqueness Loop
do 
{
    new_code = "";
    
    // Generate a 5-character string
    for (var i = 0; i < 5; i++) 
    {
        new_code += string_char_at(chars, irandom_range(1, string_length(chars)));
    }
    
    // Assume it's unique until proven otherwise
    is_unique = true; 
    
    // Scan the current master server list
    if (ds_exists(list, ds_type_list)) 
    {
        for (var i = 0; i < ds_list_size(list); i++) 
        {
            var entry = list[| i];
            // Check Data Slot 7
            if (entry[? "data7"] == new_code) 
            {
                is_unique = false; // Code exists! The loop will run again.
                break; 
            }
        }
    }
} until (is_unique == true);*/

// 3. Save the guaranteed unique code
global.my_room_code = new_code;

//Ask player for port
var port = 6510;

//Setup server, on success start game, on failure end the game.
if (htme_serverStart(port,7)) {
	//Set a server name and description. See chapter BONUS 1 in the manual.
    //This is only relevant if you are using GMnet ENGINE version, otherwise you
    //won't notice this
    htme_setData(2,global.name);
    htme_setData(3,"PUBLIC");
    htme_setData(4,string(port));
	htme_setData(6,string(ds_list_size(htme_getPlayers())));
	htme_setData(7,global.my_room_code);
	np_setpresence_partyparams(1,7,global.my_room_code+"_party",DISCORD_PARTY_PRIVACY_PRIVATE); 
    np_setpresence_secrets("","",global.my_room_code);
	np_setpresence("Waiting for Players","In Lobby","icon","");
    room_goto(htme_rom_connecting);
} else {
    htme_error_message_handler("Could not start server! Check your network configuration!");
    game_end();
}

