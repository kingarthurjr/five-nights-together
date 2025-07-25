x = obj_cam12.x;

if htme_globalGet("tbonnie") = 7
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_cove2_tbonnie_light;
}
else
{
	sprite_index = spr_cove2_tbonnie;
}