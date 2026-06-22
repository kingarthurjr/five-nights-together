/// @description Update Camera Position

if other.name = global.name //If this is the player
{
	//If anything but Foxy and Springtrap
	if global.animatronicChosen != 4 and global.animatronicChosen != 8 and global.animatronicChosen != 12 and global.animatronicChosen != 6
	{
		htme_globalSet(global.animatronics[global.animatronicChosen-1],camNumber,buffer_s8);
	}
	if global.animatronicChosen = 6
	{
		htme_globalSet(global.animatronics[global.animatronicChosen-1],12,buffer_s8);
	}
	
}