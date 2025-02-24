instance_destroy(obj_hu_generator);
instance_destroy(obj_hu_cameras);
instance_destroy(obj_hu_exit);

if instance_exists(obj_hu_restarting)
{
	instance_destroy(obj_hu_restarting);
}