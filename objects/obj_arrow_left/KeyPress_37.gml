if htme_globalGet("light") = 0
{
	//FNaF 1
	if instance_exists(obj_office1)
	{
		with(obj_office1)
		{
			instance_change(obj_office1_leftturn,true);
		}
		with(obj_office1_leftturn)
		{
			image_index = 0;
			image_speed = 1;
		}
		instance_destroy(obj_arrow_right);
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
	if instance_exists(obj_office1_right_closed)
	{
		with(obj_office1_right_closed)
		{
			instance_change(obj_office1_rightturn,true);
		}
		with(obj_office1_rightturn)
		{
			image_index = image_number - 1;
			image_speed = -1;
		}
	}

	//FNaF 2
	if instance_exists(obj_office2) and !instance_exists(obj_office2_animatronic) and !instance_exists(obj_foxy_part)
	{
		with(obj_office2)
		{
			instance_change(obj_office2_leftturn,true);
		}
		with(obj_office2_leftturn)
		{
			image_index = 0;
			image_speed = 1;
		}
		instance_destroy(obj_arrow_right);
		instance_destroy(obj_button_camera);
		instance_destroy(obj_button_mask);
		instance_destroy(obj_button_handunit);
		instance_destroy();
	}
	if instance_exists(obj_office2_right)
	{
		with(obj_office2_right)
		{
			instance_change(obj_office2_rightturn,true);
		}
		with(obj_office2_rightturn)
		{
			image_index = image_number - 1;
			image_speed = -1;
		}
		instance_destroy(obj_button_mask);
		instance_destroy();
	}
}