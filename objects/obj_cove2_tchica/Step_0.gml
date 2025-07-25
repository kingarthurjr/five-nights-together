x = obj_cam12.x;

if htme_globalGet("tchica") = 7
{
	image_index = 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_cove2_tchica_light;
}
else
{
	sprite_index = spr_cove2_tchica;
}