if htme_globalGet("light") = 1
{
	sprite_index = spr_game_wfoxy_light;
}
else
{
	sprite_index = spr_game_wfoxy;
}
draw_self();