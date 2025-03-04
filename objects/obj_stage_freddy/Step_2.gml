if current != image_index
{
    if htme_globalGet("freddySpecial") != 1
    {
        if !instance_exists(obj_movement)
        {
            instance_create(0,0,obj_movement);
        }
    }
}