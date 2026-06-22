/// @description Special Events

//Death Coin Location
if global.deathCoin
{
	image_index = 0;
}
else
{
	coinRoom = null;
	if global.coinLocation <= 8
	{
		coinRoom = 3;
	}
	if global.coinLocation = 9
	{
		coinRoom = 4;
	}
	if global.coinLocation >= 10 and global.coinLocation <= 12
	{
		coinRoom = 11;
	}
	if global.coinLocation = 20
	{
		coinRoom = 9;
	}
	if global.coinLocation = 13
	{
		coinRoom = 10;
	}
	if global.coinLocation >= 14 and global.coinLocation <= 16
	{
		coinRoom = 5;
	}
	if global.coinLocation >= 17 and global.coinLocation <= 19
	{
		coinRoom = 6;
	}
	image_index = coinRoom+1;
}

//Rotate Accordingly
/*if (facing = 1 and image_angle != 90) or (facing = 0 and image_angle != 0)
{
	image_angle -= 2;
}
if (facing = 2 and image_angle != -90) or (facing = 0 and image_angle != 0)
{
	image_angle += 2;
}*/

if (facing == 1)
{
    if (image_angle < 90) image_angle += 2;
}
else if (facing == 2)
{
    if (image_angle > -90) image_angle -= 2;
}
else // facing == 0
{
    if (image_angle > 0) image_angle -= 2;
    else if (image_angle < 0) image_angle += 2;
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