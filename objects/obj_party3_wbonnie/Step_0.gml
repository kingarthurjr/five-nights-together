x = obj_cam03.x;

if htme_globalGet("wbonnie") = 12
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_party3_wbonnie_light;
}
else
{
	sprite_index = spr_party3_wbonnie;
}