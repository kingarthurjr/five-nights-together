// If Withered Chica is taken, switch to that
if htme_globalGet("wchicaTaken") != "noone"
{
	instance_change(obj_cs_wchica,true);
}
// Otherwise perform as normal
event_inherited();