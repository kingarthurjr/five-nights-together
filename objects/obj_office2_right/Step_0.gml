//Light
if keyboard_check(ord(global.lightKey))
{
	htme_globalSet("light",1,buffer_bool);
	if !audio_is_playing(snd_light)
	{
		audio_play_sound(snd_light,10,true);
	}
	if htme_globalGet("tfreddy") = 1
	{
		image_index = 2;
	}
	else if htme_globalGet("tbonnie") = 1
	{
		image_index = 3;
	}
	else if htme_globalGet("tchica") = 1
	{
		image_index = 4;
	}
	else if htme_globalGet("mangle") = 1
	{
		image_index = 5;
	}
	else if htme_globalGet("wfreddy") = 1
	{
		image_index = 6;
	}
	else if htme_globalGet("wbonnie") = 1
	{
		image_index = 7;
	}
	else if htme_globalGet("wchica") = 1
	{
		image_index = 8;
	}
	else if htme_globalGet("wfoxy") = 1
	{
		image_index = 9;
	}
	else if htme_globalGet("puppet") = 1
	{
		image_index = 10;
	}
	else if htme_globalGet("springtrap") = 1
	{
		image_index = 11;
	}
	else if htme_globalGet("mimic") = 1
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
	if audio_is_playing(snd_light)
	{
		audio_stop_sound(snd_light);
	}
}

//Jumpscare
if htme_globalGet("jumpscare") = 1
{
	instance_change(obj_office2_rightturn,true);
	with(obj_office2_rightturn)
	{
		image_index = image_number - 1;
		image_speed = -1;
	}
}