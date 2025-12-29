x = obj_cam09.x;
if htme_globalGet("tchicaTaken") != "noone" and htme_globalGet("tchica") = 0
{
	image_index = 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_stage_tchica_light;
}
else
{
	sprite_index = spr_stage_tchica;
}