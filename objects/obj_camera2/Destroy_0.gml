//Return Fan Audio to Normal Volume
if audio_is_playing(snd_office2)
{
    audio_sound_gain(snd_office2,0.3,0);
}

//Delete Anything Camera-Related
if instance_exists(obj_switch)
{
    instance_destroy(obj_switch);
}
if instance_exists(obj_movement)
{
    instance_destroy(obj_movement);
}
if instance_exists(obj_breaksignal)
{
    instance_destroy(obj_breaksignal);
}
if instance_exists(obj_playaudio)
{
    instance_destroy(obj_playaudio);
}
if instance_exists(obj_buttonload)
{
    instance_destroy(obj_buttonload);
}
if instance_exists(obj_camsound)
{
    instance_destroy(obj_camsound);
}
if instance_exists(obj_foxywarn)
{
    instance_destroy(obj_foxywarn);
}
if instance_exists(obj_puppetflicker)
{
    instance_destroy(obj_puppetflicker);
}
if instance_exists(obj_puppetblock)
{
    instance_destroy(obj_puppetblock);
}
if instance_exists(obj_cam01)
{
    instance_destroy(obj_cam01);
}
if instance_exists(obj_cam02)
{
    instance_destroy(obj_cam02);
}
if instance_exists(obj_cam03)
{
    instance_destroy(obj_cam03);
}
if instance_exists(obj_cam04)
{
    instance_destroy(obj_cam04);
}
if instance_exists(obj_cam05)
{
    instance_destroy(obj_cam05);
}
if instance_exists(obj_cam06)
{
    instance_destroy(obj_cam06);
}
if instance_exists(obj_cam07)
{
    instance_destroy(obj_cam07);
}
if instance_exists(obj_cam08)
{
    instance_destroy(obj_cam08);
}
if instance_exists(obj_cam09)
{
    instance_destroy(obj_cam09);
}
if instance_exists(obj_cam10)
{
    instance_destroy(obj_cam10);
}
if instance_exists(obj_cam11)
{
    instance_destroy(obj_cam11);
}
if instance_exists(obj_cam12)
{
    instance_destroy(obj_cam12);
}
if instance_exists(obj_bluescreen)
{
    instance_destroy(obj_bluescreen);
}
if instance_exists(obj_cameramap2)
{
    instance_destroy(obj_cameramap2);
}
if instance_exists(obj_static)
{
    instance_destroy(obj_static);
}

//Tell the server that the camera is disabled
htme_globalSet("cameraActive",0,buffer_bool);