//Normal Door Operations
if sprite_index = spr_office1_right_closed
{	
	//Door
	if keyboard_check(ord(global.doorKey))
	{
		htme_globalSet("doorRight",0,buffer_bool);
		sprite_index = spr_office1_right_door;
		if animationStarted = false
		{
			image_index = image_number - 1;
			animationStarted = true;
		}
		image_speed = -1;
		audio_play_sound(snd_door,10,false);
	}
}

//Door Close
if sprite_index = spr_office1_right_door
{
	if floor(image_index) = 0 //Animation End
	{
		instance_change(obj_office1_right,true);
	}
}