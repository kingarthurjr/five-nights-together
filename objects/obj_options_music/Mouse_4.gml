// Only allow clicking if another button isn't already active
if (!global.is_rebinding)
{
    audio_play_sound(choose(snd_click1,snd_click2,snd_click3),10,false);
	global.music = !global.music;
	
	//Stop or Start Music
	if !global.music
	{
		audio_stop_all();
	}
	else
	{
		audio_play_sound(mus_menu,10,true);
	}
}