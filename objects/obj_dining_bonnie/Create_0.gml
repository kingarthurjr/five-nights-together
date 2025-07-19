x = obj_cam1b.x;

if htme_globalGet("bonnie") = 3
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -4;