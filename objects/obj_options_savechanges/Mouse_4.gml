// Only allow clicking if another button isn't already active
if (!global.is_rebinding)
{
    audio_play_sound(choose(snd_click1,snd_click2,snd_click3),10,false);
	ini_open("settings.ini");
	
	ini_write_real("Options","doorKey",global.doorKey);
	ini_write_real("Options","lightKey",global.lightKey);
	ini_write_real("Options","cameraKey",global.cameraKey);
	ini_write_real("Options","maskKey",global.maskKey);
	ini_write_real("Options","fullscreen",window_get_fullscreen());
	ini_write_real("Options","music",global.maskKey);
	
	ini_close();
	audio_play_sound(snd_confirm,10,false);
}