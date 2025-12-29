x = obj_cam1a.x;
if htme_globalGet("bonnieTaken") != "noone" and htme_globalGet("bonnie") = 0
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}