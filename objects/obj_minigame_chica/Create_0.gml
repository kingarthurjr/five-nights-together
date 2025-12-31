depth = -99996;
//Create Components
instance_create(0,0,obj_minigame_fg);
instance_create(0,0,obj_hc_ui);
instance_create(820,600,obj_hc_chica);
//Freeze Player
global.playerobject.stopMoving = true;
//Music Change

/*randomize();
if global.music = true
{
    if global.animMusic = 0
    {
        audio_play_sound(mus_chica,10,true);
        audio_sound_set_track_position(mus_chica,choose(0,16));
    }
    else
    {
        audio_play_sound(mus_chica_alt,10,true);
        audio_sound_set_track_position(mus_chica_alt,choose(0,16));
    }
}*/