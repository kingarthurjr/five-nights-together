if htme_globalGet("foxyTaken") != "noone"
{
	image_index = 0;
}
if htme_globalGet("mimicTaken") != "noone"
{
	image_index = 1;
}
if htme_globalGet("wfoxyTaken") != "noone"
{
	image_index = 2;
}
if htme_globalGet("mangleTaken") != "noone"
{
	image_index = 3;
}

depth = -7;
image_alpha = 0.3;
alarm[0] = random_range(0,30);