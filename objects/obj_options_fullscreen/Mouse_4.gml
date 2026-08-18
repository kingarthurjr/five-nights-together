// Only allow clicking if another button isn't already active
if (!global.is_rebinding)
{
    audio_play_sound(choose(snd_click1,snd_click2,snd_click3),10,false);
	window_set_fullscreen(!window_get_fullscreen());
}