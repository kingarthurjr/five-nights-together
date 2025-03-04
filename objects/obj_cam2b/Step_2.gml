if (current != image_index)
{
    var freddyCondition = (htme_globalGet("freddy") != 7) || (htme_globalGet("freddySpecial") != 1);
    var bonnieCondition = (htme_globalGet("bonnie") != 7) || (htme_globalGet("bonnieSpecial") != 1);
    var mimicCondition = (htme_globalGet("mimic") != 7) || ((htme_globalGet("freddySpecial") != 1) && (htme_globalGet("bonnieSpecial") != 1));
    
    if (freddyCondition && bonnieCondition && mimicCondition)
    {
        if (!instance_exists(obj_movement))
        {
            instance_create(0,0,obj_movement);
        }
    }
}