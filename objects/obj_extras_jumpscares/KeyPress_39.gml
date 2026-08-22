if jumpscare < 15
{
	if audio_is_playing(snd_jumpscare_freddy)
	{
	    audio_stop_sound(snd_jumpscare_freddy);
	}
	if audio_is_playing(snd_jumpscare_bonnie)
	{
	    audio_stop_sound(snd_jumpscare_bonnie);
	}
	if audio_is_playing(snd_jumpscare_chica)
	{
	    audio_stop_sound(snd_jumpscare_chica);
	}
	if audio_is_playing(snd_jumpscare_foxy)
	{
	    audio_stop_sound(snd_jumpscare_foxy);
	}
	if audio_is_playing(snd_jumpscare_puppet)
	{
	    audio_stop_sound(snd_jumpscare_puppet);
	}
	if audio_is_playing(snd_jumpscare_springtrap)
	{
	    audio_stop_sound(snd_jumpscare_springtrap);
	}
	if audio_is_playing(snd_jumpscare_mimic)
	{
	    audio_stop_sound(snd_jumpscare_mimic);
	}
	if audio_is_playing(snd_jumpscare_tfreddy)
	{
	    audio_stop_sound(snd_jumpscare_tfreddy);
	}
	if audio_is_playing(snd_jumpscare_tbonnie)
	{
	    audio_stop_sound(snd_jumpscare_tbonnie);
	}
	if audio_is_playing(snd_jumpscare_tchica)
	{
	    audio_stop_sound(snd_jumpscare_tchica);
	}
	if audio_is_playing(snd_jumpscare_mangle)
	{
	    audio_stop_sound(snd_jumpscare_mangle);
	}
	if audio_is_playing(snd_jumpscare_wfreddy)
	{
	    audio_stop_sound(snd_jumpscare_wfreddy);
	}
	if audio_is_playing(snd_jumpscare_wbonnie)
	{
	    audio_stop_sound(snd_jumpscare_wbonnie);
	}
	if audio_is_playing(snd_jumpscare_wchica)
	{
	    audio_stop_sound(snd_jumpscare_wchica);
	}
	if audio_is_playing(snd_jumpscare_wfoxy)
	{
	    audio_stop_sound(snd_jumpscare_wfoxy);
	}
	jumpscare += 1;
	ended = 0;
	image_index = 0;
	image_speed = 1;
}