/// @description Animation End

if image_speed = -1
{
	if floor(image_index) = 0
	{
		if htme_globalGet("buildingPower") > 0 and htme_globalGet("freddyOut") = 0
		{
			instance_change(obj_office1,true);
		}
		else
		{
			instance_change(obj_office1_outage,true);
		}
	}
}
else
{
	if floor(image_index) = image_number - 1
	{
		instance_change(obj_office1_right,true);
	}
}