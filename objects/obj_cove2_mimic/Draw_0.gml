if htme_globalGet("light") = 1
{
	sprite_index = spr_cove2_mimic_light;
}
else
{
	sprite_index = spr_cove2_mimic;
}
draw_self();