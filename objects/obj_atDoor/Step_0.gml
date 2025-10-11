/// @description 

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
	//NOTE TO SELF: CREATE SCRIPT THAT CHECKS IF EVERY ANIMATRONIC IS *NOT* AT ARGUMENT
	if htme_globalGet("freddy") != obj_doorOffice.camNumber and htme_globalGet("bonnie") != obj_doorOffice.camNumber and htme_globalGet("chica") != obj_doorOffice.camNumber and htme_globalGet("foxy") != obj_doorOffice.camNumber and htme_globalGet("puppet") != obj_doorOffice.camNumber and htme_globalGet("springtrap") != obj_doorOffice.camNumber and global.bbLocation = 0
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
	    if obj_doorOffice.camNumber = 1
	    {
	        if htme_globalGet("leftSeen") = 1
	        {
	            htme_globalSet("leftSeen",0,buffer_bool);
	            audio_play_sound(snd_bonk,10,false);
	            global.deathCoin = false;
	            global.coinLocation = 0;
	            obj_player.respawn = true;
	            room = rm_diningarea;
	        }
	    }
	    if obj_doorOffice.camNumber = 2
	    {
	        if htme_globalGet("rightSeen") = 1
	        {
	            htme_globalSet("rightSeen",0,buffer_bool);
	            audio_play_sound(snd_bonk,10,false);
	            global.deathCoin = false;
	            global.coinLocation = 0;
	            obj_player.respawn = true;
	            room = rm_diningarea;
	        }
	    }
	}
}