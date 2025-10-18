if dont = false
{
    htme_globalSet("tooLate",0,buffer_u8);
    obj_player.stopMoving = false;
    
	//What camera to go back to
    if htme_globalGet("mapSelected") = 0 //FNaF1
	{
		if camNumber = 1
	    {
	        camNumber = 5;
	    }
	    if camNumber = 2
	    {
	        camNumber = 6;
	    }
	}
	if htme_globalGet("mapSelected") = 1 //FNaF2
	{
		if camNumber = 1
	    {
	        camNumber = 4;
	    }
	    if camNumber = 2
	    {
	        camNumber = 14;
	    }
		if camNumber = 3
	    {
	        camNumber = 15;
	    }
	}
	//Set the animatronic to the correct camera
	htme_globalSet(global.animatronics[global.animatronicChosen-1],camNumber,buffer_s8);
}