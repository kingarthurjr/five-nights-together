//If At Door
if global.atDoor = true
{
	instance_change(obj_atDoor,true);
}

//Update Current Mimic
if htme_globalGet("mimicTaken") != "noone"
{
    image_index = global.currentMimic;
}

//Active Cooldown
if freddyCooldown > 0
{
    freddyCooldown -= 1;
}
if bonnieCooldown > 0
{
    bonnieCooldown -= 1;
}
if chicaCooldown > 0
{
    chicaCooldown -= 1;
}
if puppetCooldown > 0
{
    puppetCooldown -= 1;
}
//Cooldown Complete
if freddyCooldown <= 0
{
    freddyReady = true;
}
if bonnieCooldown <= 0 and !instance_exists(obj_minigame_bonnie)
{
    bonnieReady = true;
}
if chicaCooldown <= 0 and !instance_exists(obj_minigame_chica)
{
    chicaReady = true;
}
if puppetCooldown <= 0
{
    puppetReady = true;
}

//Which Bonnie is Active?
activeBonnie = htme_globalGet(string(global.animatronicName));

//Check if Camera is Hackable
if htme_globalGet("mapSelected") = 0 //FNaF1
{
	camSelected = false;
	if activeBonnie = 0 and htme_globalGet("cameraStage") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 3 and htme_globalGet("cameraDiningRoom") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 4 and htme_globalGet("cameraBackstage") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 5 and htme_globalGet("cameraWestHall") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 6 and htme_globalGet("cameraEastHall") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 7 and htme_globalGet("cameraWHallCorner") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 8 and htme_globalGet("cameraEHallCorner") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 10 and htme_globalGet("cameraSupplyCloset") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 11 and htme_globalGet("cameraRestrooms") != 2
	{
		camSelected = true;
	}
}
if htme_globalGet("mapSelected") = 1 //FNaF2
{
	camSelected = false;
	if activeBonnie = 0 and htme_globalGet("cameraStage") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 5 and htme_globalGet("cameraPrizeCorner") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 6 and htme_globalGet("cameraGameArea") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 7 and htme_globalGet("cameraKidsCove") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 8 and htme_globalGet("cameraMainHall") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 9 and htme_globalGet("cameraPartsAndService") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 10 and htme_globalGet("cameraPartyRoom1") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 11 and htme_globalGet("cameraPartyRoom2") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 12 and htme_globalGet("cameraPartyRoom3") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 13 and htme_globalGet("cameraPartyRoom4") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 14 and htme_globalGet("cameraLeftVent") != 2
	{
		camSelected = true;
	}
	if activeBonnie = 15 and htme_globalGet("cameraRightVent") != 2
	{
		camSelected = true;
	}
}

//Display Opacity
freddyCondition = ((htme_globalGet("mimicTaken") != "noone" and global.currentMimic = 0) or ((scr_get_anim_icon(global.animatronicChosen,true)+1 = 1))) && (freddyReady = true);
bonnieCondition = ((htme_globalGet("mimicTaken") != "noone" and global.currentMimic = 1) or ((scr_get_anim_icon(global.animatronicChosen,true)+1 = 2))) && ((bonnieReady = true) && camSelected);
chicaCondition = ((htme_globalGet("mimicTaken") != "noone" and global.currentMimic = 2) or ((scr_get_anim_icon(global.animatronicChosen,true)+1 = 3))) && (chicaReady = true);
foxyCondition = ((htme_globalGet("mimicTaken") != "noone" and global.currentMimic = 3) or ((scr_get_anim_icon(global.animatronicChosen,true)+1 = 4))) && (foxyReady = true);
puppetCondition = global.animatronicChosen = 5 && (puppetReady = true);

if !freddyCondition and !bonnieCondition and !chicaCondition and !foxyCondition and !puppetCondition
{
	image_alpha = .3;
}
else
{
	image_alpha = 1;
}