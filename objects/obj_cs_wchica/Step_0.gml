// If Toy Chica is taken, switch to that
if htme_globalGet("tchicaTaken") != "noone"
{
	instance_change(obj_cs_tchica,true);
}
// Otherwise perform as normal
event_inherited();