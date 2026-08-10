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