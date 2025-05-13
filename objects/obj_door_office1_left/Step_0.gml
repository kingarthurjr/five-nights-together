/// @description Animation

//Toggle
if htme_globalGet("doorLeft") = 1
{
	if closed = 0
	{
		image_speed -= 1;
		if audioStarted = false
		{
			if !audio_is_playing(snd_door)
			{
				audio_play_sound(snd_door,10,false);
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
			if !audio_is_playing(snd_door)
			{
				audio_play_sound(snd_door,10,false);
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