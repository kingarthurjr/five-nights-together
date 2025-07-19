/// @description Right Vent

if keyboard_check(ord(global.lightKey))
{
	htme_globalSet("light",1,buffer_bool);
	if !audio_is_playing(snd_light2)
	{
		audio_play_sound(snd_light2,10,true);
	}
	if htme_globalGet("tfreddy") = 2
	{
		image_index = 2;
	}
	else if htme_globalGet("tbonnie") = 2
	{
		image_index = 3;
	}
	else if htme_globalGet("tchica") = 2
	{
		image_index = 4;
	}
	else if htme_globalGet("mangle") = 2
	{
		image_index = 5;
	}
	else if htme_globalGet("wfreddy") = 2
	{
		image_index = 6;
	}
	else if htme_globalGet("wbonnie") = 2
	{
		image_index = 7;
	}
	else if htme_globalGet("wchica") = 2
	{
		image_index = 8;
	}
	else if htme_globalGet("wfoxy") = 2
	{
		image_index = 9;
	}
	else if htme_globalGet("puppet") = 2
	{
		image_index = 10;
	}
	else if htme_globalGet("springtrap") = 2
	{
		image_index = 11;
	}
	else if htme_globalGet("mimic") = 2
	{
		image_index = 12;
	}
	else
	{
		image_index = 1;
	}
}
if keyboard_check_released(ord(global.lightKey))
{
	htme_globalSet("light",0,buffer_bool);
	image_index = 0;
	if audio_is_playing(snd_light2)
	{
		audio_stop_sound(snd_light2);
	}
}
//Camera Disabled
if htme_globalGet("cam06") = 1
{
    if !instance_exists(obj_videoerror)
    {
        instance_create(0,0,obj_videoerror);
    }
}
else
{
    if instance_exists(obj_videoerror)
    {
        instance_destroy(obj_videoerror);
    }
}
//Camera Change
if htme_globalGet("camera") != 15
{
	instance_destroy();
}