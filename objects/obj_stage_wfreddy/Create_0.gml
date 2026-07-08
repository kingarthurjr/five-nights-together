x = obj_cam09.x;
if htme_globalGet("wfreddyTaken") != "noone" and htme_globalGet("wfreddy") = 0
{
	image_index = (htme_globalGet("freddySpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -15;