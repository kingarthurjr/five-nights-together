/// @description Door or Lure?

//Jumpscare when door opens
if htme_globalGet("mapSelected") = 0 //FNaF1
{
	if camNumber = 1
	{
		if htme_globalGet("doorLeft") = 0
		{
			htme_globalSet("jumpscare",1,buffer_bool);
	        htme_globalSet("whoGot",global.animatronicChosen,buffer_u8);
	        room_goto(rm_gameover);
		}
	}
	if camNumber = 2
	{
		if htme_globalGet("doorRight") = 0
		{
			htme_globalSet("jumpscare",1,buffer_bool);
	        htme_globalSet("whoGot",global.animatronicChosen,buffer_u8);
	        room_goto(rm_gameover);
		}
	}
}

//Destroy if lured
if htme_globalGet("bbLocation") != 0
{
	instance_destroy();
}