with(obj_office1)
{
	instance_change(obj_office1_outage,true);
}
obj_handunit.generator = 1;
instance_create_layer(653,300,"Buttons",obj_hu_restarting);
instance_destroy(obj_hu_cameras);
instance_destroy(obj_hu_exit);
instance_destroy();