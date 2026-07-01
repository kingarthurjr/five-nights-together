if global.nightGuard = 1
{
    instance_create(0,0,obj_switch);
    audio_play_sound(snd_static,10,false);
    instance_destroy();
}
else
{
	instance_destroy(obj_icon);
	if instance_exists(obj_minimap1)
	{
		instance_destroy(obj_minimap1);
	}
	if instance_exists(obj_minimap2)
	{
		instance_destroy(obj_minimap2);
	}
	if instance_exists(obj_special)
	{
		instance_destroy(obj_special);
	}
	if instance_exists(obj_atDoor)
	{
		instance_destroy(obj_atDoor);
	}
	if htme_globalGet("jumpscareHappened") = 1
    {
        if htme_globalGet("whoGot") = 1
        {
            if !audio_is_playing(snd_jumpscare_freddy)
            {
                audio_play_sound(snd_jumpscare_freddy,10,false);
            }
        }
        if htme_globalGet("whoGot") = 2
        {
            if !audio_is_playing(snd_jumpscare_bonnie)
            {
                audio_play_sound(snd_jumpscare_bonnie,10,false);
            }
        }
        if htme_globalGet("whoGot") = 3
        {
            if !audio_is_playing(snd_jumpscare_chica)
            {
                audio_play_sound(snd_jumpscare_chica,10,false);
            }
        }
        if htme_globalGet("whoGot") = 4
        {
            if !audio_is_playing(snd_jumpscare_foxy)
            {
                audio_play_sound(snd_jumpscare_foxy,10,false);
            }
        }
        if htme_globalGet("whoGot") = 5
        {
            if !audio_is_playing(snd_jumpscare_puppet)
            {
                audio_play_sound(snd_jumpscare_puppet,10,false);
            }
        }
        if htme_globalGet("whoGot") = 6
        {
            if !audio_is_playing(snd_jumpscare_springtrap)
            {
                audio_play_sound(snd_jumpscare_springtrap,10,false);
            }
        }
        if htme_globalGet("whoGot") = 7
        {
            if !audio_is_playing(snd_jumpscare_mimic)
            {
                audio_play_sound(snd_jumpscare_mimic,10,false);
            }
        }
		if htme_globalGet("whoGot") = 8
		{
		    audio_play_sound(snd_jumpscare_tfreddy,10,false,2);
		}
		if htme_globalGet("whoGot") = 9
		{
		    audio_play_sound(snd_jumpscare_tbonnie,10,false,2);
		}
		if htme_globalGet("whoGot") = 10
		{
		    audio_play_sound(snd_jumpscare_tchica,10,false,2);
		}
		if htme_globalGet("whoGot") = 11
		{
		    audio_play_sound(snd_jumpscare_mangle,10,false,2);
		}
		if htme_globalGet("whoGot") = 12
		{
		    audio_play_sound(snd_jumpscare_wfreddy,10,false,2);
		}
		if htme_globalGet("whoGot") = 13
		{
		    audio_play_sound(snd_jumpscare_wbonnie,10,false,2);
		}
		if htme_globalGet("whoGot") = 14
		{
		    audio_play_sound(snd_jumpscare_wchica,10,false,2);
		}
		if htme_globalGet("whoGot") = 15
		{
		    audio_play_sound(snd_jumpscare_wfoxy,10,false,2);
		}
    }
    if htme_globalGet("gameover") = 1
    {
        audio_stop_all();
        instance_create(0,0,obj_switch);
        audio_play_sound(snd_static,10,false);
        instance_destroy();
    }
}