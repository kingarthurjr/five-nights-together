/// @description Backstage

//Camera Panning
if x <= -240
{
	global.camMove = 0;
}
if x >= 0
{
	global.camMove = 1;
}
if global.camMove = 0
{
	x += 1;
}
if global.camMove = 1
{
	x -= 1;
}
global.camMoveX = x;

//Who to Display
image_index = 0;
if htme_globalGet("springtrap") = 8
{
	image_index = 7;
}
else if htme_globalGet("bonnie") = 8
{
	image_index = (htme_globalGet("bonnieSpecial") = 1) ? 4 : 3;
}
else if htme_globalGet("foxy") = 8
{
	image_index = 6;
}
else if htme_globalGet("freddy") = 8
{
	image_index = (htme_globalGet("freddySpecial") = 1) ? 2 : 1;
}
else if htme_globalGet("chica") = 8
{
	image_index = 5;
}
else if htme_globalGet("mimic") = 8
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 10 : ((htme_globalGet("freddySpecial")) ? 9 : 8);
}
//Camera Disabled
if htme_globalGet("cam2b") = 1
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
if htme_globalGet("camera") != 4
{
	instance_destroy();
}