x = obj_cam12.x;

if htme_globalGet("tbonnie") = 7
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -4;