/// @description Update Location

if htme_globalGet("foxyTaken") != "noone"
{
	active = htme_globalGet("foxy");
}
if htme_globalGet("mangleSelected") != "noone"
{
	active = htme_globalGet("mangle");
}
if htme_globalGet("wfoxyTaken") != "noone"
{
	active = htme_globalGet("wfoxy");
}

image_index = active;