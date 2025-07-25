x = obj_cam12.x;

if htme_globalGet("wfreddy") = 7
{
	image_index = (htme_globalGet("freddySpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_cove2_wfreddy_light;
}
else
{
	sprite_index = spr_cove2_wfreddy;
}