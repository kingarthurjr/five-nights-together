//Foxy Special
if htme_globalGet("foxyRunning")
{
	if obj_time.part_spawn[3] and !instance_exists(obj_foxy_right)
	{
		instance_create_layer(0,0,"Buttons",obj_foxy_right);
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
	if htme_globalGet("tfreddy") = 3 or htme_globalGet("tbonnie") = 3 or htme_globalGet("tchica") = 3 or htme_globalGet("mangle") = 3 or htme_globalGet("wfreddy") = 3 or htme_globalGet("wbonnie") = 3 or htme_globalGet("wchica") = 3 or htme_globalGet("wfoxy") = 3 or htme_globalGet("puppet") = 3 or htme_globalGet("springtrap") = 3 or htme_globalGet("mimic") = 3
	{
		htme_globalSet("rightSeen",1,buffer_bool);
		if global.rightDoorFirstTime = false
		{
			audio_play_sound(snd_boo,10,false);
			global.rightDoorFirstTime = true;
		}
	}
	if htme_globalGet("tfreddy") = 3
	{
		image_index = 2;
	}
	else if htme_globalGet("tbonnie") = 3
	{
		image_index = 3;
	}
	else if htme_globalGet("tchica") = 3
	{
		image_index = 4;
	}
	else if htme_globalGet("mangle") = 3
	{
		image_index = 5;
	}
	else if htme_globalGet("wfreddy") = 3
	{
		image_index = 6;
	}
	else if htme_globalGet("wbonnie") = 3
	{
		image_index = 7;
	}
	else if htme_globalGet("wchica") = 3
	{
		image_index = 8;
	}
	else if htme_globalGet("wfoxy") = 3
	{
		image_index = 9;
	}
	else if htme_globalGet("puppet") = 3
	{
		image_index = 10;
	}
	else if htme_globalGet("springtrap") = 3
	{
		image_index = 11;
	}
	else if htme_globalGet("mimic") = 3
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
	instance_change(obj_office2_rightturn,true);
	with(obj_office2_rightturn)
	{
		image_index = image_number - 1;
		image_speed = -1;
	}
}