/// @description Update Location

if htme_globalGet("foxy") != 0
{
	active = htme_globalGet("foxy");
}
if htme_globalGet("mangle") != 0
{
	active = htme_globalGet("mangle");
}
if htme_globalGet("wfoxy") != 0
{
	active = htme_globalGet("wfoxy");
}

image_index = active;