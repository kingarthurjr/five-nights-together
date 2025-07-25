x = obj_cam11.x;

if htme_globalGet("wbonnie") = 5
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_prize_wbonnie_light;
}
else
{
	sprite_index = spr_prize_wbonnie;
}