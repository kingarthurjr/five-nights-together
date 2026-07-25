if htme_globalGet("light") = 1
{
	sprite_index = spr_party3_wbonnie_light;
}
else
{
	sprite_index = spr_party3_wbonnie;
}
gpu_set_texfilter(false);
draw_self();
gpu_set_texfilter(true);