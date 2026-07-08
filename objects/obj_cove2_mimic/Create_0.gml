x = obj_cam12.x;
if htme_globalGet("mimic") = 7
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 3 : ((htme_globalGet("freddySpecial")) ? 2 : 1);
}
else
{
	image_index = 0;
}
current = image_index;
depth = -13;