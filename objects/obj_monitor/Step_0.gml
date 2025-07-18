/// @description Animation End

if image_speed = -1
{
	if floor(image_index) = 0
	{
		if htme_globalGet("powerOut") = 0
		{
			if htme_globalGet("mapSelected") = 0 //FNaF1
			{
				instance_create_layer(40,270,"Buttons",obj_arrow_left);
				instance_create_layer(920,270,"Buttons",obj_arrow_right);
				instance_create_layer(680,500,"Buttons",obj_button_handunit);
				instance_create_layer(0,0,"Animatronics",obj_office1_flickering);
			}
			if htme_globalGet("mapSelected") = 1 //FNaF2
			{
				instance_create_layer(40,270,"Buttons",obj_arrow_left);
				instance_create_layer(920,270,"Buttons",obj_arrow_right);
				instance_create_layer(680,500,"Buttons",obj_button_handunit);
				instance_create_layer(480,500,"Buttons",obj_button_mask);
				instance_create_layer(0,0,"Animatronics",obj_office2_flickering);
				instance_create_layer(0,0,"DeskShadow",obj_office2_desk_flickering);
			}
		}
		instance_destroy();
	}
}
else
{
	if floor(image_index) = image_number - 1
	{
		if htme_globalGet("mapSelected") = 0
		{
			instance_change(obj_camera1,true);
		}
		if htme_globalGet("mapSelected") = 1
		{
			instance_change(obj_camera2,true);
		}
	}
}