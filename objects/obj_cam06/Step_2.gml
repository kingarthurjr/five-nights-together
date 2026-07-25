//Did the animatronic count change?
if !scr_cam_isEmpty(15) and current = false
{
    if (!instance_exists(obj_movement))
    {
        instance_create(0,0,obj_movement);
    }
}
if scr_cam_isEmpty(15) and current = true
{
    if (!instance_exists(obj_movement))
    {
        instance_create(0,0,obj_movement);
    }
}
if (htme_globalGet("bonnie") = 15 or htme_globalGet("wbonnie") = 15 or htme_globalGet("mimic") = 15) and htme_globalGet("bonnieSpecial") = 0 and bonnieSpecial = true
{
	if (!instance_exists(obj_movement))
    {
        instance_create(0,0,obj_movement);
    }
}