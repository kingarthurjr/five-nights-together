/*
0 = Stage
1 = Office
2 = Left Office
3 = Right Office
4 = Office Hall
5 = Prize Corner
6 = Game Area
7 = Kid's Cove
8 = Main Hall
9 = Parts and Service 
10 = Party Room 1
11 = Party Room 2
12 = Party Room 3
13 = Party Room 4
14 = Left Vent
15 = Right Vent
*/

///In Office
if htme_globalGet("tfreddy") = 1 or htme_globalGet("tbonnie") = 1 or htme_globalGet("tchica") = 1 or htme_globalGet("mangle") = 1 or htme_globalGet("wfreddy") = 1 or htme_globalGet("wbonnie") = 1 or htme_globalGet("wchica") = 1 or htme_globalGet("wfoxy") = 1 or htme_globalGet("puppet") = 1 or htme_globalGet("springtrap") = 1 or htme_globalGet("mimic") = 1
{
	inOffice = 1;
	if !instance_exists(obj_office2_animatronic)
	{
		instance_create_layer(0,0,"Animatronics",obj_office2_animatronic);
	}
}
else
{
	inOffice = 0;
	if instance_exists(obj_office2_animatronic)
	{
		instance_destroy(obj_office2_animatronic);
	}
}
///Door Light
if keyboard_check_pressed(ord(global.lightKey)) and inOffice = 0 and !instance_exists(obj_mask) and !instance_exists(obj_monitor) and !instance_exists(obj_camera2)
{
	image_index = 1;
	htme_globalSet("light",1,buffer_bool);
	if !audio_is_playing(snd_light2)
	{
		audio_play_sound(snd_light2,10,true);
	}
	if htme_globalGet("puppet") = 4
	{
		if !instance_exists(obj_office2_puppet)
		{
			instance_create_layer(0,0,"Animatronics",obj_office2_puppet);
		}
	}
	if htme_globalGet("tchica") = 4
	{
		if !instance_exists(obj_office2_tchica)
		{
			instance_create_layer(0,0,"Animatronics",obj_office2_tchica);
		}
	}
	if htme_globalGet("wchica") = 4
	{
		if !instance_exists(obj_office2_wchica)
		{
			instance_create_layer(0,0,"Animatronics",obj_office2_wchica);
		}
	}
	if htme_globalGet("springtrap") = 4
	{
		if !instance_exists(obj_office2_springtrap)
		{
			instance_create_layer(0,0,"Animatronics",obj_office2_springtrap);
		}
	}
	if htme_globalGet("tbonnie") = 4
	{
		if !instance_exists(obj_office2_tbonnie)
		{
			instance_create_layer(0,0,"Animatronics",obj_office2_tbonnie);
		}
	}
	if htme_globalGet("wbonnie") = 4
	{
		if !instance_exists(obj_office2_wbonnie)
		{
			instance_create_layer(0,0,"Animatronics",obj_office2_wbonnie);
		}
	}
	if htme_globalGet("tfreddy") = 4
	{
		if !instance_exists(obj_office2_tfreddy)
		{
			instance_create_layer(0,0,"Animatronics",obj_office2_tfreddy);
		}
	}
	if htme_globalGet("wfreddy") = 4
	{
		if !instance_exists(obj_office2_wfreddy)
		{
			instance_create_layer(0,0,"Animatronics",obj_office2_wfreddy);
		}
	}
	if htme_globalGet("mangle") = 4
	{
		if !instance_exists(obj_office2_mangle)
		{
			instance_create_layer(0,0,"Animatronics",obj_office2_mangle);
		}
	}
	if htme_globalGet("wfoxy") = 4
	{
		if !instance_exists(obj_office2_wfoxy)
		{
			instance_create_layer(0,0,"Animatronics",obj_office2_wfoxy);
		}
	}
	if htme_globalGet("mimic") = 4
	{
		if !instance_exists(obj_office2_mimic)
		{
			instance_create_layer(0,0,"Animatronics",obj_office2_mimic);
		}
	}
}
if keyboard_check_released(ord(global.lightKey)) or inOffice = 1
{
	image_index = 0;
	htme_globalSet("light",0,buffer_bool);
	if audio_is_playing(snd_light2)
	{
		audio_stop_sound(snd_light2);
	}
	if instance_exists(obj_office2_tfreddy)
	{
		instance_destroy(obj_office2_tfreddy);
	}
	if instance_exists(obj_office2_tbonnie)
	{
		instance_destroy(obj_office2_tbonnie);
	}
	if instance_exists(obj_office2_tchica)
	{
		instance_destroy(obj_office2_tchica);
	}
	if instance_exists(obj_office2_mangle)
	{
		instance_destroy(obj_office2_mangle);
	}
	if instance_exists(obj_office2_wfreddy)
	{
		instance_destroy(obj_office2_wfreddy);
	}
	if instance_exists(obj_office2_wbonnie)
	{
		instance_destroy(obj_office2_wbonnie);
	}
	if instance_exists(obj_office2_wchica)
	{
		instance_destroy(obj_office2_wchica);
	}
	if instance_exists(obj_office2_wfoxy)
	{
		instance_destroy(obj_office2_wfoxy);
	}
	if instance_exists(obj_office2_puppet)
	{
		instance_destroy(obj_office2_puppet);
	}
	if instance_exists(obj_office2_springtrap)
	{
		instance_destroy(obj_office2_springtrap);
	}
	if instance_exists(obj_office2_mimic)
	{
		instance_destroy(obj_office2_mimic);
	}
}

///Close everything for Jumpscare
if htme_globalGet("jumpscare") = 1
{
    if instance_exists(obj_camera2)
    {
		instance_destroy(obj_camera2);
		instance_create_layer(0,540,"Devices",obj_monitor);
		with(obj_monitor)
		{
			image_index = image_number-1;
			image_speed = -1;
		}
    }
    if instance_exists(obj_handunit)
    {
        with(obj_handunit)
		{
			instance_change(obj_handunit_flip,true);
		}
		with(obj_handunit_flip)
		{
			image_speed = -1;
			image_index = image_number - 1;
		}
    }
	if instance_exists(obj_mask)
    {
        with(obj_mask)
		{
			instance_change(obj_mask_flip,true);
		}
		with(obj_mask_flip)
		{
			image_speed = -1;
			image_index = image_number - 1;
		}
    }
    if !instance_exists(obj_camera2) and !instance_exists(obj_monitor) and !instance_exists(obj_handunit) and !instance_exists(obj_mask) and !instance_exists(obj_mask_flip)and !instance_exists(obj_handunit_flip)
    {
        if !instance_exists(obj_jumpscare)
        {
            instance_create(0,0,obj_jumpscare);
        }
    }
}