// Inherit the parent event
event_inherited();

if !instance_exists(obj_extras_credits)
{
	instance_create(0,0,obj_extras_credits);
}