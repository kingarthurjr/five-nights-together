//Muffle the Fan Audio
if audio_is_playing(snd_office1)
{
    audio_sound_gain(snd_office1,0.1,0);
}

//Recreate the Camera Button
alarm[0] = 10;

//Create Screen
if htme_globalGet("cameraOut") = 1
{
	instance_create_layer(0,0,"Devices",obj_bluescreen);
}
else
{	
	//Create UI
	instance_create_layer(0,0,"Buttons",obj_cameramap1);
	instance_create_layer(0,0,"Buttons",obj_static);
	
	//Tell the Server the Camera is ON
	htme_globalSet("cameraActive",1,buffer_bool);
	
	//Create Camera Feed
	if htme_globalGet("camera") = 0
	{
		if !instance_exists(obj_cam1a)
		{
			instance_create_layer(0,0,"Devices",obj_cam1a);
		}
	}
	if htme_globalGet("camera") = 3
	{
		if !instance_exists(obj_cam1b)
		{
			instance_create_layer(0,0,"Devices",obj_cam1b);
		}
	}
	if htme_globalGet("camera") = null
	{
		if !instance_exists(obj_cam1c)
		{
			instance_create_layer(0,0,"Devices",obj_cam1c);
		}
	}
	if htme_globalGet("camera") = 4
	{
		if !instance_exists(obj_cam5)
		{
			instance_create_layer(0,0,"Devices",obj_cam5);
		}
	}
	if htme_globalGet("camera") = 5
	{
		if !instance_exists(obj_cam2a)
		{
			instance_create_layer(0,0,"Devices",obj_cam2a);
		}
	}
	if htme_globalGet("camera") = 6
	{
		if !instance_exists(obj_cam4a)
		{
			instance_create_layer(0,0,"Devices",obj_cam4a);
		}
	}
	if htme_globalGet("camera") = 7
	{
		if !instance_exists(obj_cam2b)
		{
			instance_create_layer(0,0,"Devices",obj_cam2b);
		}
	}
	if htme_globalGet("camera") = 8
	{
		if !instance_exists(obj_cam4b)
		{
			instance_create_layer(0,0,"Devices",obj_cam4b);
		}
	}
	if htme_globalGet("camera") = 9
	{
		if !instance_exists(obj_cam6)
		{
			instance_create_layer(0,0,"Devices",obj_cam6);
		}
	}
	if htme_globalGet("camera") = 10
	{
		if !instance_exists(obj_cam3)
		{
			instance_create_layer(0,0,"Devices",obj_cam3);
		}
	}
	if htme_globalGet("camera") = 11
	{
		if !instance_exists(obj_cam7)
		{
			instance_create_layer(0,0,"Devices",obj_cam7);
		}
	}
}

teaseFUN = 0;