depth = -9998;
///Variable Defaults
facing = 0;
image_index = global.coinRoom+1;

///Create Locators
if htme_globalGet("freddyTaken") != 0
{
	if !instance_exists(obj_locator_freddy)
	{
		instance_create(x,y,obj_locator_freddy);
	}
}
if htme_globalGet("bonnieTaken") != 0
{
	if !instance_exists(obj_locator_bonnie)
	{
		instance_create(x,y,obj_locator_bonnie);
	}
}
if htme_globalGet("chicaTaken") != 0
{
	if !instance_exists(obj_locator_chica)
	{
		instance_create(x,y,obj_locator_chica);
	}
}
if htme_globalGet("foxyTaken") != 0
{
	if !instance_exists(obj_locator_foxy)
	{
		instance_create(x,y,obj_locator_foxy);
	}
}
if htme_globalGet("puppetTaken") != 0
{
	if !instance_exists(obj_locator_puppet)
	{
		instance_create(x,y,obj_locator_puppet);
	}
}
if htme_globalGet("springtrapTaken") != 0
{
	if !instance_exists(obj_locator_springtrap)
	{
		instance_create(x,y,obj_locator_springtrap);
	}
}