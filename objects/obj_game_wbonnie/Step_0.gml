x = obj_cam10.x;

if htme_globalGet("wbonnie") = 6
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_game_wbonnie_light;
}
else
{
	sprite_index = spr_game_wbonnie;
}