if htme_globalGet("light") = 1
{
	sprite_index = spr_stage_wbonnie_light;
}
else
{
	sprite_index = spr_stage_wbonnie;
}
draw_self();