x = obj_cam08.x;
if htme_globalGet("mimic") = 9
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 3 : ((htme_globalGet("freddySpecial")) ? 2 : 1);
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_partsandservice_mimic_light;
}
else
{
	sprite_index = spr_partsandservice_mimic;
}