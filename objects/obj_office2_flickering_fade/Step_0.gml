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

//Manage Image
image_alpha -= 0.01;
if instance_exists(obj_office2)
{
    image_index = 0;
}
if instance_exists(obj_office2_left)
{
    image_index = 1;
}
if instance_exists(obj_office2_right)
{
    image_index = 2;
}

//Destroy when done
if image_alpha = 0
{
	instance_destroy();
}