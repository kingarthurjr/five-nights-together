//Close Devices
if instance_exists(obj_camera1)
{
    with(obj_camera1)
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
//Tell everyone the jumpscare has begun
htme_globalSet("jumpscareHappened",1,buffer_bool);
//Who jumpscared?
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
instance_create(0,0,obj_shake);