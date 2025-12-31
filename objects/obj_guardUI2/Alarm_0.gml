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
		if instance_exists(obj_office2)
		{
			with(obj_office2)
			{
				instance_change(obj_office2_outage,true);
			}
		}
		if instance_exists(obj_camera2)
		{
			instance_destroy(obj_camera2);
			instance_create_layer(0,540,"Devices",obj_monitor);
			with(obj_monitor)
			{
				image_index = image_number-1;
				image_speed = -1;
			}
		}
		if instance_exists(obj_mask)
		{
			instance_destroy(obj_mask);
			instance_create_layer(0,540,"Devices",obj_mask_flip);
			with(obj_mask_flip)
			{
				image_index = image_number-1;
				image_speed = -1;
			}
		}
		if instance_exists(obj_office2_left)
		{
			with(obj_office2_left)
			{
				instance_change(obj_office2_leftturn,true);
			}
			with(obj_office2_leftturn)
			{
				image_index = image_number - 1;
				image_speed = -1;
			}
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
		}
	}
}

alarm[0] = powerDown; //Repeat that as soon as you need to.