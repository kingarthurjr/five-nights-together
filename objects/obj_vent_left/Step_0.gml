/// @description Change

//Toggle
if (htme_globalGet("tfreddy") = 14 or htme_globalGet("tfreddy") = 2) or (htme_globalGet("tbonnie") = 14 or htme_globalGet("tbonnie") = 2) or (htme_globalGet("tchica") = 14 or htme_globalGet("tchica") = 2) or (htme_globalGet("mangle") = 14 or htme_globalGet("mangle") = 2) or (htme_globalGet("wfreddy") = 14 or htme_globalGet("wfreddy") = 2) or (htme_globalGet("wbonnie") = 14 or htme_globalGet("wbonnie") = 2) or (htme_globalGet("wchica") = 14 or htme_globalGet("wchica") = 2) or (htme_globalGet("wfoxy") = 14 or htme_globalGet("wfoxy") = 2) or (htme_globalGet("puppet") = 14 or htme_globalGet("puppet") = 2) or (htme_globalGet("springtrap") = 14 or htme_globalGet("springtrap") = 2)
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