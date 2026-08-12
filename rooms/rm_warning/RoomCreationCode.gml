gpu_set_texfilter(true);
audio_play_sound(mus_menu,10,true);
instance_create(0,0,obj_discord);
instance_create(0,0,obj_dual_instance); //Disable if not testing

if !instance_exists(obj_htme)
{
	instance_create(0,0,obj_htme);
}