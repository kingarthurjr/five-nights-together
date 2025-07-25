//Muffle the Fan Audio
if audio_is_playing(snd_office2)
{
    audio_sound_gain(snd_office2,0.1,0);
}

if instance_exists(obj_office2_flickering)
{
	instance_destroy(obj_office2_flickering);
}
if instance_exists(obj_office2_desk_flickering)
{
	instance_destroy(obj_office2_desk_flickering);
}

//Recreate the Camera Button
alarm[0] = 10;

//Create Screen
if htme_globalGet("cameraOut") = 1
{
	instance_create(0,0,obj_bluescreen);
}
else
{	
	//Tell the Server the Camera is ON
	htme_globalSet("cameraActive",1,buffer_bool);
	
	//Create UI
	instance_create(0,0,obj_switch);
	instance_create(0,0,obj_cameramap2);
	instance_create(0,0,obj_static);
	instance_create(432,434,obj_breaksignal);    
    if instance_exists(obj_audiocooldown)
    {
		instance_create(432,418,obj_buttonload);
    }
    else
    {
		instance_create(432,379,obj_playaudio);
    }
	
	//Create Camera Feed
	if htme_globalGet("camera") = 0
	{
		if !instance_exists(obj_cam09)
		{
			instance_create(0,0,obj_cam09);
		}
	}
	if htme_globalGet("camera") = 5
	{
		if !instance_exists(obj_cam11)
		{
			instance_create(0,0,obj_cam11);
		}
	}
	if htme_globalGet("camera") = 6
	{
		if !instance_exists(obj_cam10)
		{
			instance_create(0,0,obj_cam10);
		}
	}
	if htme_globalGet("camera") = 7
	{
		if !instance_exists(obj_cam12)
		{
			instance_create(0,0,obj_cam12);
		}
	}
	if htme_globalGet("camera") = 8
	{
		if !instance_exists(obj_cam07)
		{
			instance_create(0,0,obj_cam07);
		}
	}
	if htme_globalGet("camera") = 9
	{
		if !instance_exists(obj_cam08)
		{
			instance_create(0,0,obj_cam08);
		}
	}
	if htme_globalGet("camera") = 10
	{
		if !instance_exists(obj_cam01)
		{
			instance_create(0,0,obj_cam01);
		}
	}
	if htme_globalGet("camera") = 11
	{
		if !instance_exists(obj_cam02)
		{
			instance_create(0,0,obj_cam02);
		}
	}
	if htme_globalGet("camera") = 12
	{
		if !instance_exists(obj_cam03)
		{
			instance_create(0,0,obj_cam03);
		}
	}
	if htme_globalGet("camera") = 13
	{
		if !instance_exists(obj_cam04)
		{
			instance_create(0,0,obj_cam04);
		}
	}
	if htme_globalGet("camera") = 14
	{
		if !instance_exists(obj_cam05)
		{
			instance_create(0,0,obj_cam05);
		}
	}
	if htme_globalGet("camera") = 15
	{
		if !instance_exists(obj_cam06)
		{
			instance_create(0,0,obj_cam06);
		}
	}
}

teaseFUN = 0;
current = htme_globalGet("camera");