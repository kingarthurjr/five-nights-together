// If Toy Bonnie is taken, switch to that
if htme_globalGet("tbonnieTaken") != "noone"
{
	instance_change(obj_cs_tbonnie,true);
}
// Otherwise perform as normal
event_inherited();