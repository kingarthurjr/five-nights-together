audio_play_sound(choose(snd_click1,snd_click2,snd_click3),10,false);

//Ask player for port
var port = 6510;

//Setup server, on success start game, on failure end the game.
if (htme_serverStart(port,32)) {
    //Set a server name and description. See chapter BONUS 1 in the manual.
    //This is only relevant if you are using GMnet ENGINE version, otherwise you
    //won't notice this
    htme_setData(2,global.name);
    htme_setData(3,"PRIVATE");
    htme_setData(4,string(port));
    room_goto(rm_password);
} else {
    htme_error_message_handler("Could not start server! Check your network configuration!");
    game_end();
}

