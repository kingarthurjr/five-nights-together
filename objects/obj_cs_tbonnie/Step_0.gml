// If Withered Bonnie is taken, switch to that
if htme_globalGet("wbonnieTaken") != "noone"
{
	instance_change(obj_cs_wbonnie,true);
}
// Otherwise perform as normal
event_inherited();