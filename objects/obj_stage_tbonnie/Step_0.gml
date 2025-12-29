x = obj_cam09.x;
if htme_globalGet("tbonnieTaken") != "noone" and htme_globalGet("tbonnie") = 0
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_stage_tbonnie_light;
}
else
{
	sprite_index = spr_stage_tbonnie;
}