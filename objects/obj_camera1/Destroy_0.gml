//Return Fan Audio to Normal Volume
if audio_is_playing(snd_office1)
{
    audio_sound_gain(snd_office1,0.3,0);
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
if instance_exists(obj_cam1a)
{
    instance_destroy(obj_cam1a);
}
if instance_exists(obj_cam1b)
{
    instance_destroy(obj_cam1b);
}
if instance_exists(obj_cam1c)
{
    instance_destroy(obj_cam1c);
}
if instance_exists(obj_cam2a)
{
    instance_destroy(obj_cam2a);
}
if instance_exists(obj_cam2b)
{
    instance_destroy(obj_cam2b);
}
if instance_exists(obj_cam3)
{
    instance_destroy(obj_cam3);
}
if instance_exists(obj_cam4a)
{
    instance_destroy(obj_cam4a);
}
if instance_exists(obj_cam4b)
{
    instance_destroy(obj_cam4b);
}
if instance_exists(obj_cam5)
{
    instance_destroy(obj_cam5);
}
if instance_exists(obj_cam6)
{
    instance_destroy(obj_cam6);
}
if instance_exists(obj_cam7)
{
    instance_destroy(obj_cam7);
}
if instance_exists(obj_bluescreen)
{
    instance_destroy(obj_bluescreen);
}

//Tell the server that the camera is disabled
htme_globalSet("cameraActive",0,buffer_bool);