if htme_globalGet(animatronic+"Taken") = global.name //If taken by you
{
	image_index = 1;
}
else
{
	if htme_globalGet(animatronic+"Taken") = "noone" //No one took it
	{
		image_index = 0;
	}
	else //Someone else did
	{
		image_index = 2;
		
		//Destroy Skin Select Arrows
		if instance_exists(obj_cs_up)
		{
			instance_destroy(obj_cs_up);
		}
		if instance_exists(obj_cs_down)
		{
			instance_destroy(obj_cs_down);
		}
	}
}