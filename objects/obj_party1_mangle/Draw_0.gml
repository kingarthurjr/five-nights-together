if htme_globalGet("light") = 1
{
	sprite_index = spr_party1_mangle_light;
}
else
{
	sprite_index = spr_party1_mangle;
}
draw_self();