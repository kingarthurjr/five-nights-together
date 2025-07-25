x = obj_cam09.x;
if ds_list_size(htme_getPlayers()) > 2 and htme_globalGet("bonnie") = 0
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -4;