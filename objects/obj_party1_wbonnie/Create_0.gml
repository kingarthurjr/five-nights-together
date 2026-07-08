x = obj_cam01.x;

if htme_globalGet("wbonnie") = 10
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -14;