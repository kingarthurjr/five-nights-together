depth = -99997;
//Create Components
instance_create(0,0,obj_minigame_fg);
instance_create(900,500,obj_bb_instructions);
instance_create(0,0,obj_minigame_border);
instance_create(425,35,obj_bb_balloonboy);
instance_create(125,437,obj_bb_createItem);
instance_create(275,437,obj_bb_createItem);
instance_create(425,437,obj_bb_createItem);
instance_create(575,437,obj_bb_createItem);
instance_create(725,437,obj_bb_createItem);
//Freeze the Player
global.playerobject.stopMoving = true;
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