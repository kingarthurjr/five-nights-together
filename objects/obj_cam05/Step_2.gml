//Did the animatronic count change?
if !scr_cam_isEmpty(14) and current = false
{
    if (!instance_exists(obj_movement))
    {
        instance_create(0,0,obj_movement);
    }
}
if scr_cam_isEmpty(14) and current = true
{
    if (!instance_exists(obj_movement))
    {
        instance_create(0,0,obj_movement);
    }
}
if (htme_globalGet("bonnie") = 14 or htme_globalGet("wbonnie") = 14 or htme_globalGet("mimic") = 14) and htme_globalGet("bonnieSpecial") = 0 and bonnieSpecial = true
{
	if (!instance_exists(obj_movement))
    {
        instance_create(0,0,obj_movement);
    }
}