if current != image_index
{
    if !instance_exists(obj_movement)
    {
        instance_create(0,0,obj_movement);
    }
}