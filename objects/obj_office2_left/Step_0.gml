//Foxy Special
if htme_globalGet("foxyRunning")
{
	if obj_time.part_spawn[2] and !instance_exists(obj_foxy_left)
	{
		instance_create_layer(0,0,"HandUnitShadow",obj_foxy_left);
	}
}

//Light
if keyboard_check(ord(global.lightKey))
{
	htme_globalSet("light",1,buffer_bool);
	if !audio_is_playing(snd_light2)
	{
		audio_play_sound(snd_light2,10,true);
	}
	if htme_globalGet("tfreddy") = 2 or htme_globalGet("tbonnie") = 2 or htme_globalGet("tchica") = 2 or htme_globalGet("mangle") = 2 or htme_globalGet("wfreddy") = 2 or htme_globalGet("wbonnie") = 2 or htme_globalGet("wchica") = 2 or htme_globalGet("wfoxy") = 2 or htme_globalGet("puppet") = 2 or htme_globalGet("springtrap") = 2 or htme_globalGet("mimic") = 2
	{
		htme_globalSet("leftSeen",1,buffer_bool);
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

//Jumpscare
if htme_globalGet("jumpscare") = 1
{
	if instance_exists(obj_foxy_part)
	{
		instance_destroy(obj_foxy_part);
	}
	instance_change(obj_office2_leftturn,true);
	with(obj_office2_leftturn)
	{
		image_index = image_number - 1;
		image_speed = -1;
	}
}