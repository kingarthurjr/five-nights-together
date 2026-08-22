if global.extras != whichButton
{
	instance_destroy();
}

if ended = 0
{
    if jumpscare = 1
    {
        sprite_index = spr_jumpscare_freddy;
        if !audio_is_playing(snd_jumpscare_freddy)
        {
            audio_play_sound(snd_jumpscare_freddy,10,false);
        }
    }
    if jumpscare = 2
    {
        sprite_index = spr_jumpscare_bonnie;
        if !audio_is_playing(snd_jumpscare_bonnie)
        {
            audio_play_sound(snd_jumpscare_bonnie,10,false);
        }
    }
    if jumpscare = 3
    {
        sprite_index = spr_jumpscare_chica;
        if !audio_is_playing(snd_jumpscare_chica)
        {
            audio_play_sound(snd_jumpscare_chica,10,false);
        }
    }
    if jumpscare = 4
    {
        sprite_index = spr_jumpscare_foxy;
        if !audio_is_playing(snd_jumpscare_foxy)
        {
            audio_play_sound(snd_jumpscare_foxy,10,false);
        }
    }
    if jumpscare = 5
    {
        sprite_index = spr_jumpscare_puppet;
        if !audio_is_playing(snd_jumpscare_puppet)
        {
            audio_play_sound(snd_jumpscare_puppet,10,false);
        }
    }
    if jumpscare = 6
    {
        sprite_index = spr_jumpscare_springtrap;
        if !audio_is_playing(snd_jumpscare_springtrap)
        {
            audio_play_sound(snd_jumpscare_springtrap,10,false);
        }
    }
    if jumpscare = 7
    {
        sprite_index = spr_jumpscare_mimic;
        if !audio_is_playing(snd_jumpscare_mimic)
        {
            audio_play_sound(snd_jumpscare_mimic,10,false);
        }
    }
	if jumpscare = 8
    {
        sprite_index = spr_jumpscare_tfreddy;
        if !audio_is_playing(snd_jumpscare_tfreddy)
        {
            audio_play_sound(snd_jumpscare_tfreddy,10,false);
        }
    }
    if jumpscare = 9
    {
        sprite_index = spr_jumpscare_tbonnie;
        if !audio_is_playing(snd_jumpscare_tbonnie)
        {
            audio_play_sound(snd_jumpscare_tbonnie,10,false);
        }
    }
    if jumpscare = 10
    {
        sprite_index = spr_jumpscare_tchica;
        if !audio_is_playing(snd_jumpscare_tchica)
        {
            audio_play_sound(snd_jumpscare_tchica,10,false);
        }
    }
    if jumpscare = 11
    {
        sprite_index = spr_jumpscare_mangle;
        if !audio_is_playing(snd_jumpscare_mangle)
        {
            audio_play_sound(snd_jumpscare_mangle,10,false);
        }
    }
	if jumpscare = 12
    {
        sprite_index = spr_jumpscare_wfreddy;
        if !audio_is_playing(snd_jumpscare_wfreddy)
        {
            audio_play_sound(snd_jumpscare_wfreddy,10,false);
        }
    }
    if jumpscare = 13
    {
        sprite_index = spr_jumpscare_wbonnie;
        if !audio_is_playing(snd_jumpscare_wbonnie)
        {
            audio_play_sound(snd_jumpscare_wbonnie,10,false);
        }
    }
    if jumpscare = 14
    {
        sprite_index = spr_jumpscare_wchica;
        if !audio_is_playing(snd_jumpscare_wchica)
        {
            audio_play_sound(snd_jumpscare_wchica,10,false);
        }
    }
    if jumpscare = 15
    {
        sprite_index = spr_jumpscare_wfoxy;
        if !audio_is_playing(snd_jumpscare_wfoxy)
        {
            audio_play_sound(snd_jumpscare_wfoxy,10,false);
        }
    }
}