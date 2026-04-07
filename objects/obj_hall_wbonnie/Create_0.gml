x = obj_cam07.x;

if htme_globalGet("wbonnie") = 7
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -4;