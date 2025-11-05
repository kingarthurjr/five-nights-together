x = obj_cam09.x;
if htme_globalGet("wbonnieTaken") != "noone" and htme_globalGet("wbonnie") = 0
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -4;