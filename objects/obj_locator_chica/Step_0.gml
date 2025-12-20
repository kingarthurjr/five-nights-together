/// @description Update Location

if htme_globalGet("chicaTaken") != "noone"
{
	active = htme_globalGet("chica");
}
if htme_globalGet("tchicaTaken") != "noone"
{
	active = htme_globalGet("tchica");
}
if htme_globalGet("wchicaTaken") != "noone"
{
	active = htme_globalGet("wchica");
}

image_index = active;