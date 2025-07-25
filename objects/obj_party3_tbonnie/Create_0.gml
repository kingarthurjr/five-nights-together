x = obj_cam03.x;

if htme_globalGet("tbonnie") = 12
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -4;