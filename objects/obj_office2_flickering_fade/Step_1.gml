//Create Any Foreground Objects
if instance_exists(obj_office2_desk)
{
	if !instance_exists(obj_office2_desk_flickering_fade)
	{
		instance_create(0,0,obj_office2_desk_flickering_fade);
	}
}
else
{
	if instance_exists(obj_office2_desk_flickering_fade)
	{
		instance_destroy(obj_office2_desk_flickering_fade);
	}
}
if instance_exists(obj_mask)
{
	if !instance_exists(obj_office2_mask_flickering_fade)
	{
		instance_create(0,0,obj_office2_mask_flickering_fade);
	}
}
else
{
	if instance_exists(obj_office2_mask_flickering_fade)
	{
		instance_destroy(obj_office2_mask_flickering_fade);
	}
}