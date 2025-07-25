x = obj_cam09.x;
if ds_list_size(htme_getPlayers()) > 2 and htme_globalGet("chica") = 0
{
	image_index = 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_stage_wchica_light;
}
else
{
	sprite_index = spr_stage_wchica;
}