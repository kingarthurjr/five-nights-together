//Chromatic Aberration
event_inherited();

//Choose Icon
if global.animatronicChosen = 7 //The Mimic
{
	image_index = global.currentMimic;
}
else
{
    image_index = scr_get_anim_icon(global.animatronicChosen);
}

//Cooldown or Foxy Mechanic
if scr_get_anim_icon(global.animatronicChosen) = 3 or global.animatronicChosen = 7
{
    if !instance_exists(obj_foxy_watched)
    {
        instance_create(0,0,obj_foxy_watched);
    }
}
else
{
    alarm[0] = 120;
}

//Defaults
freddyCooldown = 5*room_speed;
bonnieCooldown = 5*room_speed;
chicaCooldown = 5*room_speed;
puppetCooldown = 5*room_speed;
camSelected = false;
freddyReady = false;
bonnieReady = false;
chicaReady = false;
foxyReady = false;
puppetReady = false;

cheating = 0;