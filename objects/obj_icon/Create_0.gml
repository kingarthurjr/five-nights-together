//The Mimic
/*if htme_globalGet("activePlayers") = 2
{
    if !instance_exists(obj_mimic_icon)
    {
        instance_create(0,0,obj_mimic_icon);
    }
    instance_destroy();
}*/
depth = -99999;
//Set Icon
image_index = scr_get_anim_icon(global.animatronicChosen,false);

//Chromatic Aberration
event_inherited();