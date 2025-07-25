x = obj_cam07.x;

if htme_globalGet("wfreddy") = 8
{
	image_index = (htme_globalGet("freddySpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -5;