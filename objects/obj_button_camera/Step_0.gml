if keyboard_check_pressed(global.cameraKey)
{
	if htme_globalGet("mapSelected") = 0 //FNaF1
	{
		if !instance_exists(obj_camera1)
		{
			instance_create_layer(0,540,"Devices",obj_monitor);
			with(obj_monitor)
			{
				image_index = 0;
				image_speed = 1;
			}
			instance_destroy(obj_button_handunit);
			instance_destroy(obj_arrow_left);
			instance_destroy(obj_arrow_right);
			instance_destroy();
		}
		else
		{
			instance_destroy(obj_camera1);
			instance_create_layer(0,540,"Devices",obj_monitor);
			with(obj_monitor)
			{
				image_index = image_number-1;
				image_speed = -1;
			}
			obj_office1.alarm[0] = 10;
			instance_destroy();
		}
	}
	if htme_globalGet("mapSelected") = 1 //FNaF2
	{
		if !instance_exists(obj_camera2)
		{
			instance_create_layer(0,540,"Devices",obj_monitor);
			with(obj_monitor)
			{
				image_index = 0;
				image_speed = 1;
			}
			instance_destroy(obj_button_handunit);
			instance_destroy(obj_button_mask);
			instance_destroy(obj_arrow_left);
			instance_destroy(obj_arrow_right);
			instance_destroy();
		}
		else
		{
			instance_destroy(obj_camera2);
			instance_create_layer(0,540,"Devices",obj_monitor);
			with(obj_monitor)
			{
				image_index = image_number-1;
				image_speed = -1;
			}
			obj_office2.alarm[0] = 10;
			instance_destroy();
		}
	}
}