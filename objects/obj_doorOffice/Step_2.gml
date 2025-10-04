if collision = true
{
    if !instance_exists(obj_atDoor)
    {
        with(obj_special)
        {
            instance_change(obj_atDoor,true);
        }
        obj_atDoor.camNumber = camNumber
    }
}
else
{
    if instance_exists(obj_atDoor)
    {
        with(obj_atDoor)
        {
            instance_change(obj_special,true);
        }
    }
}