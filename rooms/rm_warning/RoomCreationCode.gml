///Create Persistents
global.mobile = false; //Enable if Mobile
instance_create(0,0,obj_dual_instance); //Disable if not testing
instance_create(0,0,obj_discord);
instance_create(0,0,obj_htme);

//Check for Saved Preferences
ini_open("settings.ini");

global.doorKey = ini_read_real("Options","doorKey",ord("X"));
global.lightKey = ini_read_real("Options","lightKey",ord("Z"));
global.cameraKey = ini_read_real("Options","cameraKey",vk_space);
global.maskKey = ini_read_real("Options","maskKey",ord("M"));
window_set_fullscreen(ini_read_real("Options","fullscreen",false));
global.music = ini_read_real("Options","music",true);

ini_close();

//Start Music
if global.music
{
	audio_play_sound(mus_menu,10,true)
}