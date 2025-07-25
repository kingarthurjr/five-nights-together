x = obj_cam10.x;

if htme_globalGet("tchica") = 6
{
	image_index = 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_game_tchica_light;
}
else
{
	sprite_index = spr_game_tchica;
}