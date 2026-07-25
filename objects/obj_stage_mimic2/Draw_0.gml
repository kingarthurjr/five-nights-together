if htme_globalGet("light") = 1
{
	sprite_index = spr_stage_mimic2_light;
}
else
{
	sprite_index = spr_stage_mimic2;
}
draw_self();