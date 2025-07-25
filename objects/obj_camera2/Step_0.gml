/// @description Animatronic Events

//Chica
if htme_globalGet("buildingTemp") >= 100
{
    htme_globalSet("cameraOut",1,buffer_bool);
    if !instance_exists(obj_bluescreen)
    {
        instance_create(0,0,obj_bluescreen);
    }
}

//Foxy
if (htme_globalGet("light") = 1) and ((htme_globalGet("camera") = htme_globalGet("foxy") and htme_globalGet("foxy") != 0) or (ds_list_size(htme_getPlayers()) = 2 and htme_globalGet("camera") = htme_globalGet("mimic"))) and !(htme_globalGet("camera") = htme_globalGet("puppet") and htme_globalGet("puppetSpecial") = 1)
{
	htme_globalSet("foxyWatched",1,buffer_bool);
	if (htme_globalGet("foxyReady") <= 300 and htme_globalGet("camera") != 9) and ds_list_size(htme_getPlayers()) > 2 //Remove the Camera 9 thing for FNaF2
    {
        if !instance_exists(obj_foxywarn)
        {
            instance_create(0,0,obj_foxywarn);
        }
    }
    else
    {
        if instance_exists(obj_foxywarn)
        {
            instance_destroy(obj_foxywarn);
        }
    }
}
else
{
    htme_globalSet("foxyWatched",0,buffer_bool);
    if instance_exists(obj_foxywarn)
    {
        instance_destroy(obj_foxywarn);
    }
}

//The Puppet
if htme_globalGet("camera") = htme_globalGet("puppet") and htme_globalGet("puppet") != 0
{
    if !instance_exists(obj_puppetflicker)
    {
        instance_create(0,0,obj_puppetflicker);
    }
    if htme_globalGet("puppetSpecial") = 1
    {
        if !instance_exists(obj_puppetblock)
        {
            instance_create(0,0,obj_puppetblock);
        }
        if !audio_is_playing(snd_block)
        {
            audio_play_sound(snd_block,10,true,0.3);
        }
		else
        {
            audio_sound_gain(snd_block,0.3,0);
        }
    }
    else
    {
        if instance_exists(obj_puppetblock)
        {
            instance_destroy(obj_puppetblock);
        }
        if audio_is_playing(snd_block)
        {
            audio_stop_sound(snd_block);
        }
    }
}
else
{
    if instance_exists(obj_puppetflicker)
    {
        instance_destroy(obj_puppetflicker);
    }
    if instance_exists(obj_puppetblock)
    {
        instance_destroy(obj_puppetblock);
    }
}