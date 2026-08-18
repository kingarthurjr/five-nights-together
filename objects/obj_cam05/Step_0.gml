/// @description Left Vent

if keyboard_check(global.lightKey)
{
	sprite_index = spr_leftvent_light;
	htme_globalSet("light",1,buffer_bool);
	if !audio_is_playing(snd_light2)
	{
		audio_play_sound(snd_light2,10,true);
	}
	if htme_globalGet("tfreddy") = 14
	{
		image_index = (htme_globalGet("freddySpecial")) ? 2 : 1;
	}
	else if htme_globalGet("tbonnie") = 14
	{
		image_index = (htme_globalGet("bonnieSpecial")) ? 4 : 3;
	}
	else if htme_globalGet("tchica") = 14
	{
		image_index = 5;
	}
	else if htme_globalGet("mangle") = 14
	{
		image_index = 6;
	}
	else if htme_globalGet("wfreddy") = 14
	{
		image_index = (htme_globalGet("freddySpecial")) ? 8 : 7;
	}
	else if htme_globalGet("wbonnie") = 14
	{
		image_index = (htme_globalGet("bonnieSpecial")) ? 10 : 9;
	}
	else if htme_globalGet("wchica") = 14
	{
		image_index = 11;
	}
	else if htme_globalGet("wfoxy") = 14
	{
		image_index = 12;
	}
	else if htme_globalGet("springtrap") = 14
	{
		image_index = 13;
	}
	else if htme_globalGet("mimic") = 14
	{
		image_index = (htme_globalGet("bonnieSpecial")) ? 16 : ((htme_globalGet("freddySpecial")) ? 15 : 14);
	}
	else
	{
		image_index = 0;
	}
}
if keyboard_check_released(global.lightKey)
{
	sprite_index = spr_cam05;
	htme_globalSet("light",0,buffer_bool);
	if audio_is_playing(snd_light2)
	{
		audio_stop_sound(snd_light2);
	}
	if htme_globalGet("tfreddy") = 14 and htme_globalGet("freddySpecial")
	{
		image_index = 1;
	}
	else if htme_globalGet("tbonnie") = 14 and htme_globalGet("bonnieSpecial")
	{
		image_index = 2;
	}
	else if htme_globalGet("wfreddy") = 14 and htme_globalGet("freddySpecial")
	{
		image_index = 3;
	}
	else if htme_globalGet("wbonnie") = 14 and htme_globalGet("bonnieSpecial")
	{
		image_index = 4;
	}
	else if htme_globalGet("mimic") = 14 and htme_globalGet("bonnieSpecial")
	{
		image_index = 5;
	}
	else
	{
		image_index = 0;
	}
}
//Camera Disabled
if htme_globalGet("cam05") = 1
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
if htme_globalGet("camera") != 14
{
	instance_destroy();
}

if htme_globalGet("light") = 0
{
	if htme_globalGet("tfreddy") = 14 and htme_globalGet("freddySpecial")
	{
		image_index = 1;
	}
	else if htme_globalGet("tbonnie") = 14 and htme_globalGet("bonnieSpecial")
	{
		image_index = 2;
	}
	else if htme_globalGet("wfreddy") = 14 and htme_globalGet("freddySpecial")
	{
		image_index = 3;
	}
	else if htme_globalGet("wbonnie") = 14 and htme_globalGet("bonnieSpecial")
	{
		image_index = 4;
	}
	else if htme_globalGet("mimic") = 14 and htme_globalGet("bonnieSpecial")
	{
		image_index = 5;
	}
	else
	{
		image_index = 0;
	}
}