/// @description Update Location

if htme_globalGet("freddyTaken") != "noone"
{
	active = htme_globalGet("freddy");
}
if htme_globalGet("tfreddyTaken") != "noone"
{
	active = htme_globalGet("tfreddy");
}
if htme_globalGet("wfreddyTaken") != "noone"
{
	active = htme_globalGet("wfreddy");
}

image_index = active;