if htme_globalGet("light") = 1
{
	sprite_index = spr_hall_springtrap_light;
}
else
{
	sprite_index = spr_hall_springtrap;
}
draw_self();