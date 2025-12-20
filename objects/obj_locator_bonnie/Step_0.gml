/// @description Update Location

if htme_globalGet("bonnieTaken") != "noone"
{
	active = htme_globalGet("bonnie");
}
if htme_globalGet("tbonnieTaken") != "noone"
{
	active = htme_globalGet("tbonnie");
}
if htme_globalGet("wbonnieTaken") != "noone"
{
	active = htme_globalGet("wbonnie");
}

image_index = active;