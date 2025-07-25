if instance_exists(obj_audiocooldown)
{
	if obj_audiocooldown.loading = 6
	{
	    if htme_globalGet("mapSelected") = 0 //FNaF1
		{
			instance_create(442,379,obj_playaudio);
		}
		if htme_globalGet("mapSelected") = 1 //FNaF2
		{
			instance_create(432,379,obj_playaudio);
		}
		instance_destroy(obj_audiocooldown);
	    instance_destroy();
	}
	else
	{
	    image_index = obj_audiocooldown.loading;
	}
}
else
{
	instance_destroy();
}