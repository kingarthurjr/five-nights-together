if instance_exists(obj_office2_desk) and instance_exists(obj_office2_flickering_fade)
{
	image_index = obj_office2_desk.image_index;
	image_alpha = obj_office2_flickering_fade.image_alpha;
}
else
{
	instance_destroy();
}