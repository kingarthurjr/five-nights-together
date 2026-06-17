//The Mimic
if global.animatronicChosen = 7 //The Mimic
{
    if !instance_exists(obj_mimic_freddy)
    {
        instance_create(0,0,obj_mimic_freddy);
    }
	if !instance_exists(obj_mimic_bonnie)
    {
        instance_create(0,0,obj_mimic_bonnie);
    }
	if !instance_exists(obj_mimic_chica)
    {
        instance_create(0,0,obj_mimic_chica);
    }
	if !instance_exists(obj_mimic_foxy)
    {
        instance_create(0,0,obj_mimic_foxy);
    }
	if !instance_exists(obj_mimic_instruct)
    {
        instance_create(0,0,obj_mimic_instruct);
    }
    instance_destroy();
}
else
{
	depth = -99999;
	//Set Icon
	image_index = scr_get_anim_icon(global.animatronicChosen,false);

	//Chromatic Aberration
	event_inherited();
}
isUI = true;