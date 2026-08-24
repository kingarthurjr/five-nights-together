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

//Invisible if Camera Up
if instance_exists(obj_camera2)
{
	image_alpha = 0;
}