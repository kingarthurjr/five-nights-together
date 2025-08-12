/// @description Change

//Toggle
if (htme_globalGet("tfreddy") = 14 or 2) or (htme_globalGet("tbonnie") = 14 or 2) or (htme_globalGet("tchica") = 14 or 2) or (htme_globalGet("mangle") = 14 or 2) or (htme_globalGet("wfreddy") = 14 or 2) or (htme_globalGet("wbonnie") = 14 or 2) or (htme_globalGet("wchica") = 14 or 2) or (htme_globalGet("wfoxy") = 14 or 2) or (htme_globalGet("puppet") = 14 or 2) or (htme_globalGet("springtrap") = 14 or 2)
{
	if closed = 0
	{
		image_index = 1;
		if !audio_is_playing(snd_vent_open) and !audio_is_playing(snd_vent_amongus)
		{
			randomize();
			amongus = irandom_range(1,100);
			if amongus = 1 or 2
			{
				audio_play_sound(snd_vent_amongus,10,false);
			}
			else
			{
				audio_play_sound(snd_vent_open,10,false);
			}
		}
		closed = 1;
	}
}
else
{
	if closed = 1
	{
		image_index = 0;
		if !audio_is_playing(snd_vent_open)
		{
			audio_play_sound(snd_vent_open,10,false);
		}
		closed = 0;
	}
}