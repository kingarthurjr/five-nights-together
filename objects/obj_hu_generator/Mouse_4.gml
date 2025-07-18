if htme_globalGet("mapSelected") = 0 //FNaF1
{
	with(obj_office1)
	{
		instance_change(obj_office1_outage,true);
	}
}
if htme_globalGet("mapSelected") = 1 //FNaF2
{
	with(obj_office2)
	{
		instance_change(obj_office2_outage,true);
	}
}
obj_handunit.generator = 1;
instance_create_layer(653,300,"Buttons",obj_hu_restarting);
instance_destroy(obj_hu_cameras);
instance_destroy(obj_hu_exit);
instance_destroy();