//If No Longer At Door
if global.atDoor = false
{
	instance_change(obj_special,true);
}

//Check for Death Coin
if global.deathCoin = true
{
    image_alpha = 1;
}
else
{
    image_alpha = .10;
}

if keyboard_check(ord(global.doorKey))
{
	if scr_cam_isEmpty(camNumber)
	{
	    if global.deathCoin = true
	    {
	        if !instance_exists(obj_deathCountdown)
	        {
	            instance_create(0,0,obj_deathCountdown);
	        }
	    }
	    else
	    {
	        if !instance_exists(obj_instructions_deathcoin)
	        {
	            instance_create(0,0,obj_instructions_deathcoin);
	        }
	    }
	}
	else
	{
	    if global.warnsound = 0
	    {
	        audio_play_sound(snd_denied,10,false);
	        global.warnsound = 1;
	    }
	}
}
if keyboard_check_released(ord(global.doorKey))
{
	if instance_exists(obj_deathCountdown)
	{
	    instance_destroy(obj_deathCountdown);
	}
	if instance_exists(obj_instructions_deathcoin)
	{
	    instance_destroy(obj_instructions_deathcoin);
	}
	if global.animatronicChosen != 6
	{
	    if (room = rm_westhall and obj_doorOffice.camNumber = 1) or (room = rm_officehall and obj_doorOffice.camNumber = 2)
	    {
	        if htme_globalGet("leftSeen") = 1
	        {
	            if htme_globalGet("mapSelected") = 0 //FNaF1
				{
					audio_play_sound(snd_bonk,10,false);
				}
				htme_globalSet("leftSeen",0,buffer_bool);
	            global.deathCoin = false;
	            global.coinLocation = 0;
	            obj_player.respawn = true;
	            room = spawn;
	        }
	    }
	    if (room = rm_easthall and obj_doorOffice.camNumber = 2) or (room = rm_officehall and obj_doorOffice.camNumber = 3)
	    {
	        if htme_globalGet("rightSeen") = 1
	        {
	            if htme_globalGet("mapSelected") = 0 //FNaF1
				{
					audio_play_sound(snd_bonk,10,false);
				}
				htme_globalSet("rightSeen",0,buffer_bool);
	            global.deathCoin = false;
	            global.coinLocation = 0;
	            obj_player.respawn = true;
	            room = spawn;
	        }
	    }
		if (room = rm_officehall and obj_doorOffice.camNumber = 1)
		{
			global.deathCoin = false;
	        global.coinLocation = 0;
	        obj_player.respawn = true;
	        room = spawn;
		}
	}
}