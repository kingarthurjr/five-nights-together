/// @description Scare

if reverse = false
{
    audio_play_sound(snd_scare,10,false);
    reverse = true;
}
if sprite_index = spr_dltl_surftrap
{
    audio_play_sound(snd_scraplaugh,10,false);
	//Add Surftrap Achievement Here
}
if sprite_index = spr_dltl_flipsidefreddy
{
    //Add Flipside Freddy Achievement Here
}