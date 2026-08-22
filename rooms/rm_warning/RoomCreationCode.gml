sprite_prefetch(spr_jumpscare_freddy);
sprite_prefetch(spr_jumpscare_bonnie);
sprite_prefetch(spr_jumpscare_chica);
sprite_prefetch(spr_jumpscare_foxy);
sprite_prefetch(spr_jumpscare_puppet);
sprite_prefetch(spr_jumpscare_springtrap);
sprite_prefetch(spr_jumpscare_mimic);
sprite_prefetch(spr_jumpscare_tfreddy);
sprite_prefetch(spr_jumpscare_tbonnie);
sprite_prefetch(spr_jumpscare_tchica);
sprite_prefetch(spr_jumpscare_mangle);
sprite_prefetch(spr_jumpscare_wfreddy);
sprite_prefetch(spr_jumpscare_wbonnie);
sprite_prefetch(spr_jumpscare_wchica);
sprite_prefetch(spr_jumpscare_wfoxy);

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