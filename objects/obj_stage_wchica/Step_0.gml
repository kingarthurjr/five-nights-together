x = obj_cam09.x;
if htme_globalGet("wchicaTaken") != "noone" and htme_globalGet("wchica") = 0
{
	image_index = 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_stage_wchica_light;
}
else
{
	sprite_index = spr_stage_wchica;
}