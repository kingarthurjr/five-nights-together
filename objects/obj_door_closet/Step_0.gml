/// @description Animation

//Toggle
if htme_globalGet("freddy") = 10 or htme_globalGet("bonnie") = 10 or htme_globalGet("chica") = 10 or htme_globalGet("foxy") = 10 or htme_globalGet("puppet") = 10 or htme_globalGet("springtrap") = 10
{
	if closed = 0
	{
		image_speed -= 1;
		if audioStarted = false
		{
			if !audio_is_playing(snd_doorclose)
			{
				audio_play_sound(snd_doorclose,10,false);
			}
			audioStarted = true;
		}
	}
}
else
{
	if closed = 1
	{
		image_speed = 1;
		if audioStarted = false
		{
			if !audio_is_playing(snd_dooropen)
			{
				audio_play_sound(snd_dooropen,10,false);
			}
			audioStarted = true;
		}
	}
}

//Animation End
if image_speed = 1 and image_index = image_number-1
{
	image_speed = 0;
	closed = 1;
	audioStarted = false;
}
if image_speed = -1 and image_index = 0
{
	image_speed = 0;
	closed = 0;
	audioStarted = false;
}