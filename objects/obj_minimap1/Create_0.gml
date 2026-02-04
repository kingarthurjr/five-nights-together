///Variable Defaults
facing = 0;
depth = -room_height;
blur = 2
randomize();
alarm[0] = lerp(100, 400, scr_sinein(random(1)));
coinRoom = null;

///Create Locators
if htme_globalGet("freddyTaken") != "noone"
{
	if !instance_exists(obj_locator_freddy)
	{
		instance_create(x,y,obj_locator_freddy);
	}
}
if htme_globalGet("bonnieTaken") != "noone"
{
	if !instance_exists(obj_locator_bonnie)
	{
		instance_create(x,y,obj_locator_bonnie);
	}
}
if htme_globalGet("chicaTaken") != "noone"
{
	if !instance_exists(obj_locator_chica)
	{
		instance_create(x,y,obj_locator_chica);
	}
}
if htme_globalGet("foxyTaken") != "noone"
{
	if !instance_exists(obj_locator_foxy)
	{
		instance_create(x,y,obj_locator_foxy);
	}
}
if htme_globalGet("puppetTaken") != "noone"
{
	if !instance_exists(obj_locator_puppet)
	{
		instance_create(x,y,obj_locator_puppet);
	}
}
if htme_globalGet("springtrapTaken") != "noone"
{
	if !instance_exists(obj_locator_springtrap)
	{
		instance_create(x,y,obj_locator_springtrap);
	}
}