x = obj_cam03.x;

if htme_globalGet("wchica") = 12
{
	image_index = 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_party3_wchica_light;
}
else
{
	sprite_index = spr_party3_wchica;
}