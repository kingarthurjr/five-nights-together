x = obj_cam04.x;

if htme_globalGet("mangle") = 13
{
	image_index = 1;
}
else
{
	image_index = 0;
}
if htme_globalGet("light") = 1
{
	sprite_index = spr_party4_mangle_light;
}
else
{
	sprite_index = spr_party4_mangle;
}