x = obj_cam07.x;

if htme_globalGet("wchica") = 8
{
	image_index = 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_hall_wchica_light;
}
else
{
	sprite_index = spr_hall_wchica;
}