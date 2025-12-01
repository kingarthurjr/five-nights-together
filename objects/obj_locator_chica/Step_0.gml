/// @description Update Location

if htme_globalGet("chicaSelected") != "noone"
{
	active = htme_globalGet("chica");
}
if htme_globalGet("tchicaSelected") != "noone"
{
	active = htme_globalGet("tchica");
}
if htme_globalGet("wchicaSelected") != "noone"
{
	active = htme_globalGet("wchica");
}

image_index = active;