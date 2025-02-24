/// @description Animation End

if image_speed = -1
{
	if floor(image_index) = 0
	{
		instance_change(obj_office1,true);
	}
}
else
{
	if floor(image_index) = image_number - 1
	{
		instance_change(obj_office1_right,true);
	}
}