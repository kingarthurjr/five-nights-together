if image_alpha < 1
{
	image_alpha += 0.01;
}
else
{
	if !audio_is_playing(snd_transition)
	{
		obj_stat.goback = true;
		obj_stat.prev_x = newx;
		obj_stat.prev_y = newy;
		room = newroom;
		obj_stat.facing = facing;
	}
}