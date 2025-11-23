depth = -99997;
//Create Components
instance_create(0,0,obj_minigame_fg);
instance_create(0,0,obj_bb_instructions);
instance_create(0,0,obj_minigame_border);
instance_create(850,70,obj_bb_balloonboy);
instance_create(250,875,obj_bb_createItem);
instance_create(550,875,obj_bb_createItem);
instance_create(850,875,obj_bb_createItem);
instance_create(1150,875,obj_bb_createItem);
instance_create(1450,875,obj_bb_createItem);
//Freeze the Player
obj_player.stopMoving = true;
//Defaults
alarm[0] = 90;
balloonCheck = 0;
balloonNow = 0;
balloonCount = 0;
htme_globalSet("bbGame",1,buffer_bool);

//Music Change
/*randomize();
if global.music = true
{
    if global.animMusic = 0
    {
        audio_play_sound(mus_bb,10,true);
        audio_sound_set_track_position(mus_bb,choose(0,25));
    }
    else
    {
        audio_play_sound(mus_bb_alt,10,true);
        audio_sound_set_track_position(mus_bb_alt,choose(0,25));
    }
}*/