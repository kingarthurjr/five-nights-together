depth = -12;
if global.bluescreenFirstTime == false
{
    audio_play_sound(snd_error,10,false);
    global.bluescreenFirstTime = true;
}
if instance_exists(obj_cameramap1)
{
    instance_destroy(obj_cameramap1);
}
/*if instance_exists(obj_cameramap2)
{
    instance_destroy(obj_cameramap2);
}*/