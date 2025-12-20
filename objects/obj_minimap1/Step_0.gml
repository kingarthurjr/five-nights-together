/// @description Special Events

//Rotate Accordingly
if (facing = 1 and image_angle != -90) or (facing = 0 and image_angle = 90)
{
	image_angle -= 2;
}
if (facing = 2 and image_angle != 90) or (facing = 0 and image_angle = -90)
{
	image_angle += 2;
}

//Puppet Special
if htme_globalGet("puppetSpecial") = 1
{
	if !instance_exists(obj_minimap1_puppet)
	{
		instance_create(x,y,obj_minimap1_puppet);
	}
}
else
{
	if instance_exists(obj_minimap1_puppet)
	{
		instance_destroy(obj_minimap1_puppet);
	}
}

//Bonnie Special
if htme_globalGet("bonnieTaken") != "noone"
{
	activeBonnie = htme_globalGet("bonnie");
}
if htme_globalGet("mimicTaken") != "noone"
{
	activeBonnie = htme_globalGet("mimic");
}

if htme_globalGet("bonnieBroke") = 1
{
	instance_create(x,y,obj_minimap1_disabled).image_index = activeBonnie;
	htme_globalSet("bonnieBroke",0,buffer_bool);
}