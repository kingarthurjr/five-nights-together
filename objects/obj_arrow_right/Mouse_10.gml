if instance_exists(obj_office1)
{
	with(obj_office1)
	{
		instance_change(obj_office1_rightturn,true);
	}
	with(obj_office1_rightturn)
	{
		image_index = 0;
		image_speed = 1;
	}
	instance_destroy(obj_arrow_left);
	instance_destroy(obj_button_camera);
	instance_destroy(obj_button_handunit);
}
if instance_exists(obj_office1_right)
{
	with(obj_office1_right)
	{
		instance_change(obj_office1_rightturn,true);
	}
	with(obj_office1_rightturn)
	{
		image_index = image_number - 1;
		image_speed = -1;
	}
}
if instance_exists(obj_office1_left)
{
	with(obj_office1_left)
	{
		instance_change(obj_office1_leftturn,true);
	}
	with(obj_office1_leftturn)
	{
		image_index = image_number - 1;
		image_speed = -1;
	}
}
if instance_exists(obj_office1_left_closed)
{
	with(obj_office1_left_closed)
	{
		instance_change(obj_office1_leftturn,true);
	}
	with(obj_office1_leftturn)
	{
		sprite_index = spr_office1_leftturn_closed;
		image_index = image_number - 1;
		image_speed = -1;
	}
}
instance_destroy();