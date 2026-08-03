depth = -9999;
//Close Devices
if instance_exists(obj_camera1)
{
    with(obj_camera1)
    {
        instance_change(obj_monitor,true);
    }
}
if instance_exists(obj_camera2)
{
    with(obj_camera2)
    {
        instance_change(obj_monitor,true);
    }
}
if instance_exists(obj_handunit)
{
    with(obj_handunit)
    {
        instance_change(obj_handunit_flip,true);
    }
}
if instance_exists(obj_mask)
{
    with(obj_mask)
    {
        instance_change(obj_mask_flip,true);
    }
}
if instance_exists(obj_office2_flickering_enter)
{
	instance_destroy(obj_office2_flickering_enter);
}
//Tell everyone the jumpscare has begun
htme_globalSet("jumpscareHappened",1,buffer_bool);
//Who jumpscared?
audio_stop_all();
if htme_globalGet("whoGot") = 1
{
    sprite_index = spr_jumpscare_freddy;
    audio_play_sound(snd_jumpscare_freddy,10,false,2);
}
if htme_globalGet("whoGot") = 2
{
    sprite_index = spr_jumpscare_bonnie;
    audio_play_sound(snd_jumpscare_bonnie,10,false,2);
}
if htme_globalGet("whoGot") = 3
{
    sprite_index = spr_jumpscare_chica;
    audio_play_sound(snd_jumpscare_chica,10,false,2);
}
if htme_globalGet("whoGot") = 4
{
    sprite_index = spr_jumpscare_foxy;
    audio_play_sound(snd_jumpscare_foxy,10,false,2);
}
if htme_globalGet("whoGot") = 5
{
    sprite_index = spr_jumpscare_puppet;
    audio_play_sound(snd_jumpscare_puppet,10,false,2);
}
if htme_globalGet("whoGot") = 6
{
    sprite_index = spr_jumpscare_springtrap;
    audio_play_sound(snd_jumpscare_springtrap,10,false,2);
}
if htme_globalGet("whoGot") = 7
{
    sprite_index = spr_jumpscare_mimic;
    audio_play_sound(snd_jumpscare_mimic,10,false,2);
}
if htme_globalGet("whoGot") = 8
{
    sprite_index = spr_jumpscare_tfreddy;
    audio_play_sound(snd_jumpscare_tfreddy,10,false,2);
}
if htme_globalGet("whoGot") = 9
{
    sprite_index = spr_jumpscare_tbonnie;
    audio_play_sound(snd_jumpscare_tbonnie,10,false,2);
}
if htme_globalGet("whoGot") = 10
{
    sprite_index = spr_jumpscare_tchica;
    audio_play_sound(snd_jumpscare_tchica,10,false,2);
}
if htme_globalGet("whoGot") = 11
{
    sprite_index = spr_jumpscare_mangle;
    audio_play_sound(snd_jumpscare_mangle,10,false,2);
}
if htme_globalGet("whoGot") = 12
{
    sprite_index = spr_jumpscare_wfreddy;
    audio_play_sound(snd_jumpscare_wfreddy,10,false,2);
}
if htme_globalGet("whoGot") = 13
{
    sprite_index = spr_jumpscare_wbonnie;
    audio_play_sound(snd_jumpscare_wbonnie,10,false,2);
}
if htme_globalGet("whoGot") = 14
{
    sprite_index = spr_jumpscare_wchica;
    audio_play_sound(snd_jumpscare_wchica,10,false,2);
}
if htme_globalGet("whoGot") = 15
{
    sprite_index = spr_jumpscare_wfoxy;
    audio_play_sound(snd_jumpscare_wfoxy,10,false,2);
}
instance_create(0,0,obj_shake);