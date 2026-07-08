x = obj_cam04.x;

if htme_globalGet("tbonnie") = 13
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -15;