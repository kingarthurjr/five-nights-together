// If Withered Foxy is taken, switch to that
if htme_globalGet("wfoxyTaken") != "noone"
{
	instance_change(obj_cs_wfoxy,true);
}
// Otherwise perform as normal
event_inherited();