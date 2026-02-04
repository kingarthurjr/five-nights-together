/// @description Which Map?

depth = -room_height;
if htme_globalGet("mapSelected") = 0 //FNaF1
{
	sprite_index = spr_locator1_foxy;
}
if htme_globalGet("mapSelected") = 1 //FNaF2
{
	sprite_index = spr_locator2_foxy;
}