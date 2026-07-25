if htme_globalGet("light") = 1
{
	sprite_index = spr_hall_tbonnie_light;
}
else
{
	sprite_index = spr_hall_tbonnie;
}

gpu_set_texfilter(false);
draw_self();
gpu_set_texfilter(true);