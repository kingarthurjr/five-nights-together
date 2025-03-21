//Who to display?
image_index = 0;
if htme_globalGet("foxy") = null
{
	image_index = 1;
}
else if htme_globalGet("mimic") = null
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 4 : ((htme_globalGet("freddySpecial")) ? 3 : 2);
}
//Camera Disabled
if htme_globalGet("cam1c") = 1
{
    if !instance_exists(obj_videoerror)
    {
        instance_create(0,0,obj_videoerror);
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
if htme_globalGet("camera") != null
{
	instance_destroy();
}