//Normal Door Operations
if sprite_index = spr_office1_left
{
	//Light
	if keyboard_check(global.lightKey)
	{
		htme_globalSet("light",1,buffer_bool);
		if !audio_is_playing(snd_light)
		{
			audio_play_sound(snd_light,10,true);
		}
		if !instance_exists(obj_office1_flickering_light)
		{
			instance_create(0,0,obj_office1_flickering_light);
		}
		if htme_globalGet("freddy") = 1 or htme_globalGet("bonnie") = 1 or htme_globalGet("chica") = 1 or htme_globalGet("foxy") = 1 or htme_globalGet("puppet") = 1 or htme_globalGet("springtrap") = 1 or htme_globalGet("mimic") = 1
		{
			htme_globalSet("leftSeen",1,buffer_bool);
			if global.leftDoorFirstTime = false
			{
				audio_play_sound(snd_boo,10,false);
				global.leftDoorFirstTime = true;
			}
		}
		if htme_globalGet("freddy") = 1
		{
			image_index = 2;
		}
		else
		{
			if htme_globalGet("bonnie") = 1
			{
				image_index = 3;
			}
			else
			{
				if htme_globalGet("chica") = 1
				{
					image_index = 4;
				}
				else
				{
					if htme_globalGet("foxy") = 1
					{
						image_index = 5;
					}
					else
					{
						if htme_globalGet("puppet") = 1
						{
							image_index = 6;
						}
						else
						{
							if htme_globalGet("springtrap") = 1
							{
								image_index = 7;
							}
							else
							{
								if htme_globalGet("mimic") = 1
								{
									image_index = 8;
								}
								else
								{
									image_index = 1;
								}
							}
						}
					}
				}
			}
		}
	}
	if keyboard_check_released(global.lightKey)
	{
		htme_globalSet("light",0,buffer_bool);
		image_index = 0;
		if audio_is_playing(snd_light)
		{
			audio_stop_sound(snd_light);
		}
		if instance_exists(obj_office1_flickering_light)
		{
			instance_destroy(obj_office1_flickering_light);
		}
	}
	
	//Door
	if keyboard_check(global.doorKey)
	{
		if image_index = 0
		{
			htme_globalSet("doorLeft",1,buffer_bool);
			sprite_index = spr_office1_left_door;
			image_speed = 1;
			audio_play_sound(snd_door,10,false);
		}
	}
}

//Door Close
if sprite_index = spr_office1_left_door
{
	if floor(image_index) = image_number - 1 //Animation End
	{
		instance_change(obj_office1_left_closed,true);
	}
}

//Jumpscare
if htme_globalGet("jumpscare") = 1
{
	instance_change(obj_office1_leftturn,true);
	with(obj_office1_leftturn)
	{
		image_index = image_number - 1;
		image_speed = -1;
	}
}