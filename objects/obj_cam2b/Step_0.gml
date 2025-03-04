/// @description West Hall Corner

//Who to Display
image_index = 0;
if htme_globalGet("springtrap") = 7
{
	image_index = 7;
}
else if htme_globalGet("bonnie") = 7
{
	image_index = (htme_globalGet("bonnieSpecial") = 1) ? 4 : 3;
}
else if htme_globalGet("foxy") = 7
{
	image_index = 6;
}
else if htme_globalGet("freddy") = 7
{
	image_index = (htme_globalGet("freddySpecial") = 1) ? 2 : 1;
}
else if htme_globalGet("chica") = 7
{
	image_index = 5;
}
//Camera Disabled
if htme_globalGet("cam2b") = 1
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
if htme_globalGet("camera") != 7
{
	instance_destroy();
}