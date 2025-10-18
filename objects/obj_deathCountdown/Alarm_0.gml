if global.animatronicChosen = 6
{
    instance_create(0,0,obj_springtrapSuccess);
    dont = true;
}
else
{
    if htme_globalGet("mapSelected") = 0 //FNaF1
	{
		if obj_doorOffice.camNumber = 1
	    {
	        htme_globalSet("leftSeen",0,buffer_bool);
	        if htme_globalGet("doorLeft") = 1
	        {
	            audio_play_sound(snd_bonk,10,false);
	            global.deathCoin = false;
	            global.coinLocation = 0;
	            obj_player.respawn = true;
	            room = rm_diningarea;
	        }
	        else
	        {
	            htme_globalSet("jumpscare",1,buffer_bool);
	            htme_globalSet("whoGot",global.animatronicChosen,buffer_u8);
	            room_goto(rm_gameover);
	        }
	    }
	    if obj_doorOffice.camNumber = 2
	    {
	        htme_globalSet("rightSeen",0,buffer_bool);
	        if htme_globalGet("doorRight") = 1
	        {
	            audio_play_sound(snd_bonk,10,false);
	            global.deathCoin = false;
	            global.coinLocation = 0;
	            obj_player.respawn = true;
	            room = rm_diningarea;
	        }
	        else
	        {
	            htme_globalSet("jumpscare",1,buffer_bool);
	            htme_globalSet("whoGot",global.animatronicChosen,buffer_u8);
	            room_goto(rm_gameover);
	        }
		}
	}
	if htme_globalGet("mapSelected") = 1 //FNaF2
	{
	    if htme_globalGet("mask") = 1
	    {
	        global.deathCoin = false;
	        global.coinLocation = 0;
	        obj_player.respawn = true;
	        room = rm_gamearea;
	    }
	    else
	    {
	        htme_globalSet("jumpscare",1,buffer_bool);
	        htme_globalSet("whoGot",global.animatronicChosen,buffer_u8);
	        room_goto(rm_gameover);
	    }
	}
}
instance_destroy();