// Only allow clicking if another button isn't already active
if (!global.is_rebinding)
{
    audio_play_sound(choose(snd_click1,snd_click2,snd_click3),10,false);
	selected = true;
    global.is_rebinding = true; // Lock out all other buttons
    keyboard_clear(keyboard_key);
}