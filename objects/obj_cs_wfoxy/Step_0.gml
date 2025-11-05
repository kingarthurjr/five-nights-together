// If Mangle is taken, switch to that
if htme_globalGet("mangleTaken") != "noone"
{
	instance_change(obj_cs_mangle,true);
}
// Otherwise perform as normal
event_inherited();