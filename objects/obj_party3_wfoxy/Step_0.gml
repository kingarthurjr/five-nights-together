x = obj_cam03.x;

if htme_globalGet("wfoxy") = 12
{
	image_index = 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_party3_wfoxy_light;
}
else
{
	sprite_index = spr_party3_wfoxy;
}