if htme_globalGet("light") = 1
{
	sprite_index = spr_party1_mimic_light;
}
else
{
	sprite_index = spr_party1_mimic;
}
draw_self();