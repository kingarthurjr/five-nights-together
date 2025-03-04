if ds_list_size(htme_getPlayers()) = 2 and htme_globalGet("mimic") = 0
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 3 : (htme_globalGet("freddySpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}