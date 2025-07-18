/// @description Animation End

if image_speed = -1
{
	if floor(image_index) = 0
	{
		if instance_exists(obj_office2)
		{
			instance_create_layer(40,270,"Buttons",obj_arrow_left);
			instance_create_layer(920,270,"Buttons",obj_arrow_right);
			instance_create_layer(360,500,"Buttons",obj_button_camera);
			instance_create_layer(680,500,"Buttons",obj_button_handunit);
		}
		if instance_exists(obj_office2_left)
		{
			instance_create_layer(920,270,"Buttons",obj_arrow_right);
		}
		if instance_exists(obj_office2_right)
		{
			instance_create_layer(40,270,"Buttons",obj_arrow_left);
		}
		instance_destroy();
	}
}
else
{
	if floor(image_index) = image_number - 1
	{
		instance_change(obj_mask,true);
	}
}