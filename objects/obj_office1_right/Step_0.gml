//Normal Door Operations
if sprite_index = spr_office1_right
{
	//Light
	if keyboard_check(ord(global.lightKey))
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
		if htme_globalGet("freddy") = 2
		{
			image_index = 2;
		}
		else
		{
			if htme_globalGet("bonnie") = 2
			{
				image_index = 3;
			}
			else
			{
				if htme_globalGet("chica") = 2
				{
					image_index = 4;
				}
				else
				{
					if htme_globalGet("foxy") = 2
					{
						image_index = 5;
					}
					else
					{
						if htme_globalGet("puppet") = 2
						{
							image_index = 6;
						}
						else
						{
							if htme_globalGet("springtrap") = 2
							{
								image_index = 7;
							}
							else
							{
								if htme_globalGet("mimic") = 2
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
	if keyboard_check_released(ord(global.lightKey))
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
	if keyboard_check(ord(global.doorKey))
	{
		if image_index = 0
		{
			htme_globalSet("doorRight",1,buffer_bool);
			sprite_index = spr_office1_right_door;
			image_speed = 1;
			audio_play_sound(snd_door,10,false);
		}
	}
}

//Door Close
if sprite_index = spr_office1_right_door
{
	if floor(image_index) = image_number - 1 //Animation End
	{
		instance_change(obj_office1_right_closed,true);
	}
}

//Jumpscare
if htme_globalGet("jumpscare") = 1
{
	instance_destroy(obj_arrow_left);
	instance_change(obj_office1_rightturn,true);
	with(obj_office1_rightturn)
	{
		image_index = image_number - 1;
		image_speed = -1;
	}
}