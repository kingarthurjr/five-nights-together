if ds_list_size(htme_getPlayers()) > 2 and htme_globalGet("chica") = 0
{
	image_index = 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -2;