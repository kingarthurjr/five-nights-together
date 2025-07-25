x = obj_cam01.x;

if htme_globalGet("wfoxy") = 10
{
	image_index = 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_party1_wfoxy_light;
}
else
{
	sprite_index = spr_party1_wfoxy;
}