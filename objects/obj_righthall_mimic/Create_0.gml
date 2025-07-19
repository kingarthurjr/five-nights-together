x = obj_cam4a.x;

if htme_globalGet("mimic") = 6
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 3 : ((htme_globalGet("freddySpecial")) ? 2 : 1);
}
else
{
	image_index = 0;
}
current = image_index;
depth = -5;