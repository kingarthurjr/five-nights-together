x = obj_cam03.x;

if htme_globalGet("wfreddy") = 12
{
	image_index = (htme_globalGet("freddySpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_party3_wfreddy_light;
}
else
{
	sprite_index = spr_party3_wfreddy;
}