if image_index > 0
{
	image_index -= 1;
	audio_play_sound(snd_switch,10,false);
}
else
{
	audio_play_sound(snd_doorror,10,false);
}