global.time = 0;

global.playerobject.stopMoving = false;

//Destroy Minigame Components
instance_destroy(obj_minigame_fg);
instance_destroy(obj_dltl_wall);
instance_destroy(obj_minigame_border);
instance_destroy(obj_dltl_fredbear);
instance_destroy(obj_dltl_createFreddy);
instance_destroy(obj_dltl_createBonnie);
instance_destroy(obj_dltl_createChica);
instance_destroy(obj_dltl_createFoxy);
//Destroy the Missing Children
if instance_exists(obj_dltl_freddy)
{
    instance_destroy(obj_dltl_freddy)
}
if instance_exists(obj_dltl_bonnie)
{
    instance_destroy(obj_dltl_bonnie)
}
if instance_exists(obj_dltl_chica)
{
    instance_destroy(obj_dltl_chica)
}
if instance_exists(obj_dltl_foxy)
{
    instance_destroy(obj_dltl_foxy)
}
//Stop Audio
if audio_is_playing(snd_surfsup)
{
    audio_stop_sound(snd_surfsup);
}
if audio_is_playing(snd_ruinborn)
{
    audio_stop_sound(snd_ruinborn);
}
if audio_is_playing(snd_hesflippinback)
{
    audio_stop_sound(snd_hesflippinback);
}
//Stop Music
if global.music = true
{
    if audio_is_playing(mus_fredbear)
    {
        audio_stop_sound(mus_fredbear);
    }
}