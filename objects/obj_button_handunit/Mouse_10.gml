if !instance_exists(obj_handunit_flip)
{
	instance_create_layer(700,540,"Devices",obj_handunit_flip);
	with(obj_handunit_flip)
	{
		image_speed = 1;
		image_index = 0;
	}
}
if instance_exists(obj_button_mask)
{
	instance_destroy(obj_button_mask);
}
instance_destroy(obj_button_camera);
instance_destroy(obj_arrow_left);
instance_destroy(obj_arrow_right);
instance_destroy();