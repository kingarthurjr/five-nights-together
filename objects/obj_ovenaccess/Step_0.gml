//Create "Remote Access Engaged" Tag
if htme_globalGet("ovenUse") != 0
{
    if !instance_exists(obj_ovenuse)
    {
        instance_create(0,0,obj_ovenuse);
    }
}
else
{
    if instance_exists(obj_ovenuse)
    {
        instance_destroy(obj_ovenuse);
    }
}

//Set to OFF
if htme_globalGet("ovenTemp") <= 160
{
    image_index = 0;
}
else
{
    image_index = 1;
}