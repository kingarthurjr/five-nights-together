if image_alpha < 1
{
	image_alpha += 0.2;
}
else
{
	if !audio_is_playing(snd_transition)
	{
		obj_stat.goback = true;
		obj_stat.prev_x = newx;
		obj_stat.prev_y = newy;
		obj_stat.inVent = inVent;
		room = newroom;
		obj_stat.facing = facing;
	}
}