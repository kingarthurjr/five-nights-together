//Camera Disabled
if htme_globalGet("cam1b") = 1
{
    if !instance_exists(obj_videoerror)
    {
        instance_create_layer(0,0,"Animatronics",obj_videoerror);
    }
}
else
{
    if instance_exists(obj_videoerror)
    {
        instance_destroy(obj_videoerror);
    }
}
//Camera Change
if htme_globalGet("camera") != 3
{
	instance_destroy();
}