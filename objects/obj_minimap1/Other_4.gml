//Determine Rotation
if room = rm_easthall or room = rm_restrooms
{
	facing = 1;
}
else if room = rm_westhall
{
	facing = 2;
}
else
{
	facing = 0;
}

//Create Safe Room
if room = rm_saferoom
{
	if !instance_exists(obj_minimap1_saferoom)
	{
		instance_create(x,y,obj_minimap1_saferoom);
	}
}
else
{
	if instance_exists(obj_minimap1_saferoom)
	{
		instance_destroy(obj_minimap1_saferoom);
	}
}