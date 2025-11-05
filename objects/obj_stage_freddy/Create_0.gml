x = obj_cam1a.x;
if htme_globalGet("freddyTaken") != "noone" and htme_globalGet("freddy") = 0
{
	image_index = (htme_globalGet("freddySpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -3;