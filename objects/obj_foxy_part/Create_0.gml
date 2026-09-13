depth = -11;
hoverAlpha = 0;

if htme_globalGet("wfoxyTaken") != "noone"
{
	image_index = 0;
}
if htme_globalGet("mangleTaken") != "noone"
{
	image_index = 1;
}
if htme_globalGet("mimicTaken") != "noone"
{
	image_index = 2;
}

ini_open("settings.ini");
var foxy2 = ini_read_real("Game","Foxy2",0);
if foxy2 = 0 and !instance_exists(obj_i_foxy2)
{
	ini_write_real("Game","Foxy2",1);
	instance_create(0,0,obj_i_foxy2);
}
ini_close();