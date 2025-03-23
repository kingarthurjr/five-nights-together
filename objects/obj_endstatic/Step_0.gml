if !instance_exists(obj_dead)
{
    if !audio_is_playing(snd_static)
    {
        instance_create(0,0,obj_static);
		instance_destroy();
    }
}