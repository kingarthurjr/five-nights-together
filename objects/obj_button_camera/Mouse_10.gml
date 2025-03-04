if !instance_exists(obj_monitor)
{
	instance_create_layer(0,540,"Devices",obj_monitor);
	with(obj_handunit_flip)
	{
		image_speed = 1;
		image_index = 0;
	}
}
instance_destroy(obj_button_handunit);
instance_destroy(obj_arrow_left);
instance_destroy(obj_arrow_right);
instance_destroy();