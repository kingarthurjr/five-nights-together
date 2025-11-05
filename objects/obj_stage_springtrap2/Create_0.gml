x = obj_cam09.x;
if htme_globalGet("springtrapTaken") != "noone" and htme_globalGet("springtrap") = 0
{
	image_index = 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -5;