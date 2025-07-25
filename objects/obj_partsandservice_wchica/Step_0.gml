x = obj_cam08.x;

if htme_globalGet("wchica") = 9
{
	image_index = 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_partsandservice_wchica_light;
}
else
{
	sprite_index = spr_partsandservice_wchica;
}