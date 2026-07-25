if htme_globalGet("light") = 1
{
	sprite_index = spr_game_mangle_light;
}
else
{
	sprite_index = spr_game_mangle;
}
draw_self();