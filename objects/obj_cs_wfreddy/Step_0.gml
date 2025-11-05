// If Toy Freddy is taken, switch to that
if htme_globalGet("tfreddyTaken") != "noone"
{
	instance_change(obj_cs_tfreddy,true);
}
// Otherwise perform as normal
event_inherited();