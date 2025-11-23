depth = -9998;
///Variable Defaults
image_index = global.coinRoom+1;
event_inherited();

///Create Locators
if htme_globalGet("tfreddyTaken") or htme_globalGet("wfreddyTaken")
{
	if !instance_exists(obj_locator_freddy)
	{
		instance_create(x,y,obj_locator_freddy);
	}
}
if htme_globalGet("tbonnieTaken") or htme_globalGet("wbonnieTaken")
{
	if !instance_exists(obj_locator_bonnie)
	{
		instance_create(x,y,obj_locator_bonnie);
	}
}
if htme_globalGet("tchicaTaken") or htme_globalGet("wchicaTaken")
{
	if !instance_exists(obj_locator_chica)
	{
		instance_create(x,y,obj_locator_chica);
	}
}
if htme_globalGet("mangleTaken") or htme_globalGet("wfoxyTaken")
{
	if !instance_exists(obj_locator_foxy)
	{
		instance_create(x,y,obj_locator_foxy);
	}
}
if htme_globalGet("puppetTaken")
{
	if !instance_exists(obj_locator_puppet)
	{
		instance_create(x,y,obj_locator_puppet);
	}
}
if htme_globalGet("springtrapTaken")
{
	if !instance_exists(obj_locator_springtrap)
	{
		instance_create(x,y,obj_locator_springtrap);
	}
}