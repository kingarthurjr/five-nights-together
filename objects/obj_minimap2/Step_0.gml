/// @description Special Events

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
if htme_globalGet("tbonnieSelected")
{
	activeBonnie = htme_globalGet("tbonnie");
}
if htme_globalGet("wbonnieSelected")
{
	activeBonnie = htme_globalGet("wbonnie");
}
if htme_globalGet("mimicSelected")
{
	activeBonnie = htme_globalGet("mimic");
}

if htme_globalGet("bonnieBroke") = 1
{
	instance_create(x,y,obj_minimap2_disabled).image_index = activeBonnie;
	htme_globalSet("bonnieBroke",0,buffer_bool);
}