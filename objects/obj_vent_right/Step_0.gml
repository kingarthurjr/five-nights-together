/// @description Change

//Toggle
if (htme_globalGet("tfreddy") = 15 or htme_globalGet("tfreddy") = 3) or (htme_globalGet("tbonnie") = 15 or htme_globalGet("tbonnie") = 3) or (htme_globalGet("tchica") = 15 or htme_globalGet("tchica") = 3) or (htme_globalGet("mangle") = 15 or htme_globalGet("mangle") = 3) or (htme_globalGet("wfreddy") = 15 or htme_globalGet("wfreddy") = 3) or (htme_globalGet("wbonnie") = 15 or htme_globalGet("wbonnie") = 3) or (htme_globalGet("wchica") = 15 or htme_globalGet("wchica") = 3) or (htme_globalGet("wfoxy") = 15 or htme_globalGet("wfoxy") = 3) or (htme_globalGet("puppet") = 15 or htme_globalGet("puppet") = 3) or (htme_globalGet("springtrap") = 15 or htme_globalGet("springtrap") = 3)
{
	if closed = 0
	{
		image_index = 1;
		if !audio_is_playing(snd_vent_close) and !audio_is_playing(snd_vent_amongus)
		{
			if amongus = 1 or 2
			{
				audio_play_sound(snd_vent_amongus,10,false);
			}
			else
			{
				audio_play_sound(snd_vent_close,10,false);
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