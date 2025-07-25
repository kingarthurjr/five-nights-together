x = obj_cam11.x;

if htme_globalGet("wchica") = 5
{
	image_index = 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_prize_wchica_light;
}
else
{
	sprite_index = spr_prize_wchica;
}