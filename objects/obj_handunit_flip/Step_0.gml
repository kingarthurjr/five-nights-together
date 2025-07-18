/// @description Animation End

if image_speed = -1
{
	if floor(image_index) = 0
	{
		if htme_globalGet("powerOut") = 0
		{
			instance_create_layer(40,270,"Buttons",obj_arrow_left);
			instance_create_layer(920,270,"Buttons",obj_arrow_right);
			instance_create_layer(360,500,"Buttons",obj_button_camera);
			if htme_globalGet("mapSelected") = 1 //FNaF2
			{
				instance_create_layer(480,500,"Buttons",obj_button_mask);
			}
		}
		instance_create_layer(680,500,"Buttons",obj_button_handunit);
		instance_destroy();
	}
}
else
{
	if floor(image_index) = image_number - 1
	{
		instance_change(obj_handunit,true);
	}
}