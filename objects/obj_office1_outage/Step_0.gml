//Destroy Buttons
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
//Destroy Office Flickering
if instance_exists(obj_office1_flickering)
{
    instance_destroy(obj_office1_flickering);
}
htme_globalSet("freddyOut",0,buffer_bool);