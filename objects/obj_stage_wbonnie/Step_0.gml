x = obj_cam09.x;
if htme_globalGet("wbonnieTaken") != "noone" and htme_globalGet("wbonnie") = 0
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_stage_wbonnie_light;
}
else
{
	sprite_index = spr_stage_wbonnie;
}
depth = -14;