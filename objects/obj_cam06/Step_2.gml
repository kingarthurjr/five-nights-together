//Is there an animatronic in the room that wasn't there before?
if !scr_cam_isEmpty(14) and current = false //Yes
{
    if (!instance_exists(obj_movement))
    {
        instance_create(0,0,obj_movement);
    }
}