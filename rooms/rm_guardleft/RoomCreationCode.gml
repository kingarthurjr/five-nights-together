audio_stop_all();
audio_play_sound(snd_chicken,10,false);

if instance_exists(obj_lighting)
{
	instance_destroy(obj_lighting);
}