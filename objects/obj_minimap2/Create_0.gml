depth = -999998;
///Variable Defaults
event_inherited();
coinRoom = 0;

///Create Locators
if htme_globalGet("tfreddyTaken") != "noone" or htme_globalGet("wfreddyTaken") != "noone"
{
	if !instance_exists(obj_locator_freddy)
	{
		instance_create(x,y,obj_locator_freddy);
	}
}
if htme_globalGet("tbonnieTaken") != "noone" or htme_globalGet("wbonnieTaken") != "noone"
{
	if !instance_exists(obj_locator_bonnie)
	{
		instance_create(x,y,obj_locator_bonnie);
	}
}
if htme_globalGet("tchicaTaken") != "noone" or htme_globalGet("wchicaTaken") != "noone"
{
	if !instance_exists(obj_locator_chica)
	{
		instance_create(x,y,obj_locator_chica);
	}
}
if htme_globalGet("mangleTaken") != "noone" or htme_globalGet("wfoxyTaken") != "noone"
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