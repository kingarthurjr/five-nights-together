/// @description Jumpscare (FNaF2)

if htme_globalGet("foxyCourtesy")
{
	alarm[3] = 1;
}
else
{
	if htme_globalGet("foxyWait") > 0
	{
		alarm[3] = htme_globalGet("foxyWait");
		htme_globalSet("foxyWait",0,buffer_u32);
	}
	else
	{
		//Has the Guard Removed All of the Parts?
		if htme_globalGet("foxyClicked") = 1
		{
		    if audio_is_playing(snd_mangle)
			{
				audio_stop_sound(snd_mangle);
			}
			obj_player.spawn = true;
		    obj_special.foxyReady = false;
		    htme_globalSet("foxyReady",maxCount,buffer_u16);
		    global.coinLocation = 0;
		    global.deathCoin = false;
		    global.playerobject.stopMoving = false;
			htme_globalSet("foxyClicked",0,buffer_bool);
			room = rm_kidscove;
		}
		else
		{
		    htme_globalSet("jumpscare",1,buffer_bool);
		    htme_globalSet("ranIn",1,buffer_bool);
		    htme_globalSet("whoGot",global.animatronicChosen,buffer_u8);
		    room_goto(rm_gameover);
		}
	}
}