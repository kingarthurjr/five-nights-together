///Close everything for Jumpscare

if htme_globalGet("jumpscare") = 1
{
    if instance_exists(obj_camera1)
    {
		instance_destroy(obj_camera1);
		instance_create_layer(0,540,"Devices",obj_monitor);
		with(obj_monitor)
		{
			image_index = image_number-1;
			image_speed = -1;
		}
    }
    if instance_exists(obj_handunit)
    {
        with(obj_handunit)
		{
			instance_change(obj_handunit_flip,true);
		}
		with(obj_handunit_flip)
		{
			image_speed = -1;
			image_index = image_number - 1;
		}
    }
    if !instance_exists(obj_camera1) and !instance_exists(obj_monitor) and !instance_exists(obj_handunit) and !instance_exists(obj_handunit_flip) and !instance_exists(obj_6am)
    {
        if !instance_exists(obj_jumpscare)
        {
            instance_create(0,0,obj_jumpscare);
        }
    }
}