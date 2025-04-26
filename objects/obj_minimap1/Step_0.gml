/// @description Special Events


if htme_globalGet("puppetSpecial") = 1
{
	if !instance_exists(obj_minimap1_puppet)
	{
		instance_create(x,y,obj_minimap1_puppet);
	}
}