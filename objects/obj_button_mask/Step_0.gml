if keyboard_check_pressed(global.maskKey)
{
	if !instance_exists(obj_mask)
	{
		audio_play_sound(snd_mask_on,10,false);
		instance_create_layer(0,0,"Devices",obj_mask_flip);
		with(obj_mask_flip)
		{
			image_index = 0;
			image_speed = 1;
		}
		instance_destroy(obj_button_camera);
		instance_destroy(obj_button_handunit);
		instance_destroy(obj_arrow_left);
		instance_destroy(obj_arrow_right);
		instance_destroy();
	}
	else
	{
		audio_play_sound(snd_mask_off,10,false);
		instance_destroy(obj_mask);
		instance_create_layer(0,0,"Devices",obj_mask_flip);
		with(obj_mask_flip)
		{
			image_index = image_number-1;
			image_speed = -1;
		}
		if instance_exists(obj_office2)
		{
			obj_office2.alarm[1] = 10;
		}
		if instance_exists(obj_office2_left)
		{
			obj_office2_left.alarm[0] = 10;
		}
		if instance_exists(obj_office2_right)
		{
			obj_office2_right.alarm[0] = 10;
		}
		instance_destroy();
	}
}