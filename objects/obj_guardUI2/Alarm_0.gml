/// @description Decrease Power

//If there is still power to take, take it.
if htme_globalGet("powerOut") = 0
{
	if htme_globalGet("buildingPower") > 0 and htme_globalGet("freddyOut") = 0
	{
		htme_globalSet("buildingPower",htme_globalGet("buildingPower")-1,buffer_u8);
	}
	else //Power Outage
	{
		if instance_exists(obj_arrow_left)
		{
			instance_destroy(obj_arrow_left);
		}
		if instance_exists(obj_arrow_right)
		{
			instance_destroy(obj_arrow_right);
		}
		if instance_exists(obj_button_camera)
		{
			instance_destroy(obj_button_camera);
		}
		if instance_exists(obj_office1)
		{
			with(obj_office1)
			{
				instance_change(obj_office1_outage,true);
			}
		}
		if instance_exists(obj_camera1)
		{
			instance_destroy(obj_camera1);
			instance_create_layer(0,540,"Devices",obj_monitor);
			with(obj_monitor)
			{
				image_index = image_number-1;
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
	}
}

alarm[0] = powerDown; //Repeat that as soon as you need to.