/// @description Which Map?

if htme_globalGet("mapSelected") = 0 //FNaF1
{
	sprite_index = spr_locator1_springtrap;
}
if htme_globalGet("mapSelected") = 1 //FNaF2
{
	sprite_index = spr_locator2_springtrap;
}