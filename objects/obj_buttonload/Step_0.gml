if instance_exists(obj_audiocooldown)
{
	if obj_audiocooldown.loading = 6
	{
	    instance_create(442,379,obj_playaudio);
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