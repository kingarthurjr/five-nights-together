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

//Camera Disabled
if htme_globalGet("cam7") = 1
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
if htme_globalGet("camera") != 11
{
	instance_destroy();
}