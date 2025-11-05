// If Withered Freddy is taken, switch to that
if htme_globalGet("wfreddyTaken") != "noone"
{
	instance_change(obj_cs_wfreddy,true);
}
// Otherwise perform as normal
event_inherited();