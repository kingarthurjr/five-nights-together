/// @description Break Camera

//Which Camera?
camera = htme_globalGet(global.animatronics[global.animatronicChosen-1]);

//Set it to broken
if success = true
{
	if htme_globalGet("mapSelected") = 0 //FNaF1
	{
		if camera = 0
		{
			htme_globalSet("cameraStage",2,buffer_u8);
		}
		if camera = 3
		{
			htme_globalSet("cameraDiningRoom",2,buffer_u8);
		}
		if camera = 4
		{
			htme_globalSet("cameraBackstage",2,buffer_u8);
		}
		if camera = 5
		{
			htme_globalSet("cameraWestHall",2,buffer_u8);
		}
		if camera = 6
		{
			htme_globalSet("cameraEastHall",2,buffer_u8);
		}
		if camera = 7
		{
			htme_globalSet("cameraWHallCorner",2,buffer_u8);
		}
		if camera = 8
		{
			htme_globalSet("cameraEHallCorner",2,buffer_u8);
		}
		if camera = 10
		{
			htme_globalSet("cameraSupplyCloset",2,buffer_u8);
		}
		if camera = 11
		{
			htme_globalSet("cameraRestrooms",2,buffer_u8);
		}
	}
	if htme_globalGet("mapSelected") = 1 //FNaF2
	{
		if camera = 0
		{
			htme_globalSet("cameraStage",2,buffer_u8);
		}
		if camera = 5
		{
			htme_globalSet("cameraPrizeCorner",2,buffer_u8);
		}
		if camera = 6
		{
			htme_globalSet("cameraGameArea",2,buffer_u8);
		}
		if camera = 7
		{
			htme_globalSet("cameraKidsCove",2,buffer_u8);
		}
		if camera = 8
		{
			htme_globalSet("cameraMainHall",2,buffer_u8);
		}
		if camera = 9
		{
			htme_globalSet("cameraPartsAndService",2,buffer_u8);
		}
		if camera = 10
		{
			htme_globalSet("cameraPartyRoom1",2,buffer_u8);
		}
		if camera = 11
		{
			htme_globalSet("cameraPartyRoom2",2,buffer_u8);
		}
		if camera = 12
		{
			htme_globalSet("cameraPartyRoom4",2,buffer_u8);
		}
		if camera = 13
		{
			htme_globalSet("cameraPartyRoom5",2,buffer_u8);
		}
		if camera = 14
		{
			htme_globalSet("cameraLeftVent",2,buffer_u8);
		}
		if camera = 15
		{
			htme_globalSet("cameraRightVent",2,buffer_u8);
		}
	}
}