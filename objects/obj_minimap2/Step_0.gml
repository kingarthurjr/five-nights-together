/// @description Special Events

//Death Coin Location
coinRoom = null;
if global.coinLocation <= 7
{
	coinRoom = 6;
}
if global.coinLocation = 8 or global.coinLocation = 9
{
	coinRoom = 7;
}
if global.coinLocation >= 10 and global.coinLocation <= 12
{
	coinRoom = 8;
}
if global.coinLocation = 13 or global.coinLocation = 14
{
	coinRoom = 9;
}
if global.coinLocation = 15 or global.coinLocation = 16
{
	coinRoom = 10;
}
if global.coinLocation = 17 or global.coinLocation = 18
{
	coinRoom = 11;
}
if global.coinLocation = 19 or global.coinLocation = 20
{
	coinRoom = 12;
}
if global.coinLocation = 21 or global.coinLocation = 22
{
	coinRoom = 13;
}
image_index = coinRoom+1;

//Puppet Special
if htme_globalGet("puppetSpecial") = 1
{
	if !instance_exists(obj_minimap2_puppet)
	{
		instance_create(x,y,obj_minimap2_puppet);
	}
}
else
{
	if instance_exists(obj_minimap2_puppet)
	{
		instance_destroy(obj_minimap2_puppet);
	}
}

//Bonnie Special
if htme_globalGet("tbonnieTaken") != "noone"
{
	activeBonnie = htme_globalGet("tbonnie");
}
if htme_globalGet("wbonnieTaken") != "noone"
{
	activeBonnie = htme_globalGet("wbonnie");
}
if htme_globalGet("mimicTaken") != "noone"
{
	activeBonnie = htme_globalGet("mimic");
}

if htme_globalGet("bonnieBroke") = 1
{
	instance_create(x,y,obj_minimap2_disabled).image_index = activeBonnie;
	htme_globalSet("bonnieBroke",0,buffer_bool);
}