/// @description Spawn Events and UI Elements

if !instance_exists(obj_stat)
{
    instance_create(0,0,obj_stat);
}
instance_create(0,0,obj_fadein);
global.time = 0;

//Mobile UI
/*
if global.mobile = true and room != rm_gameover and room != rm_guardWin
{
    if !instance_exists(obj_dpad)
    {
        instance_create(1400,400,obj_dpad);
    }
    if !instance_exists(obj_esc_button)
    {
        instance_create(0,0,obj_esc_button);
    }
}
*/

///Spawn Events
if room = rm_waitingroom
{
    facing = LEFT;
    spd = 8;
}
else
{
    if global.animatronicChosen = 4 or 5 //Foxy or Puppet
    {
        spd = 6;
    }
    else
    {
        spd = 4;
    }
}

//FNaF1
if spawn = true and htme_globalGet("mapSelected") = 0
{
	if room = rm_diningarea
	{
		if htme_globalGet("tooLate") = global.animatronicChosen
		{
		    htme_globalSet("tooLate",0,buffer_u8);
		}
		guardScore = htme_globalGet("guardScore");
		htme_globalSet("guardScore",guardScore+100,buffer_u32);
		if global.animatronicChosen = 1 //Freddy
		{
		    x = 940;
		    y = 290;
		}
		if global.animatronicChosen = 2 //Bonnie
		{
		    x = 880;
		    y = 250;
		}
		if global.animatronicChosen = 3 //Chica
		{
		    x = 1010;
		    y = 260;
		}
		if global.animatronicChosen = 4 //Foxy
		{
		    x = 160;
		    y = 780;
		    facing = RIGHT;
		    if htme_globalGet("activePlayers") = 2
		    {
		        maxCount = 15*room_speed;
		    }
		    if htme_globalGet("activePlayers") = 3
		    {
		        maxCount = 20*room_speed;
		    }
		    if htme_globalGet("activePlayers") >= 4
		    {
		        maxCount = 30*room_speed;
		    }
		    htme_globalSet("foxyReady",maxCount,buffer_u16);
		}
		if global.animatronicChosen = 5 //The Puppet
		{
		    room = rm_backstage;
		}
		if global.animatronicChosen = 6 //Springtrap
		{
		    room = rm_saferoom;
		}
		if global.animatronicChosen = 7 //The Mimic
		{
		    x = 2584;
		    y = 593;
		}
	}
	if room = rm_backstage
	{
	    if global.animatronicChosen = 5 //The Puppet
	    {
	        x = 620;
	        y = 220;
	    }
	}
	if global.animatronicChosen != 6 //and global.powerupDeathCoin = 0
	{
	    if global.animatronicChosen = 3 or global.animatronicChosen = 4 or global.animatronicChosen = 6 or global.animatronicChosen = 7 //If Chica or Foxy or Mimic or Puppet, include kitchen
	    {
	        global.coinLocation = irandom_range(1,20);
	    }
	    else
	    {
	        global.coinLocation = irandom_range(1,19);
	    }
	    global.deathCoin = false;
	}
	else
	{
	    global.coinLocation = 11;
	    global.deathCoin = true;
	    /*if global.powerupDeathCoin = 1
	    {
	        ini_open("settings.ini");
	        if ini_read_real("Settings", "DCoinTrial", 1) = 1
	        {
	            ini_write_real("Settings", "DCoinTrial", 0)
	        }
	        else
	        {
	            powerup4 = gms_ini_player_read("Shop","3-4");
	            gms_ini_player_write("Shop","3-4",powerup4-1);
	        }
	        ini_close();
	        global.powerupDeathCoin = 0;
	    }*/
	}
	spawn = false;
}
//FNaF2
if spawn = true and htme_globalGet("mapSelected") = 1
{
	if room = rm_gamearea
	{
	    if htme_globalGet("tooLate") = global.animatronicChosen
	    {
	        htme_globalSet("tooLate",0,buffer_u8);
	    }
	    guardScore = htme_globalGet("guardScore");
	    htme_globalSet("guardScore",guardScore+100,buffer_u32);
	    if global.animatronicChosen = 8 //Toy Freddy
	    {
	        x = 520;
	        y = 360;
	    }
	    if global.animatronicChosen = 9 //Toy Bonnie
	    {
	        x = 440;
	        y = 320;
	    }
	    if global.animatronicChosen = 10 //Toy Chica
	    {
	        x = 600;
	        y = 320;
	    }
	    if global.animatronicChosen = 11 //Mangle
	    {
	        room = rm_kidscove;
	        if htme_globalGet("activePlayers") = 2
	        {
	            maxCount = 15*room_speed;
	        }
	        if htme_globalGet("activePlayers") = 3
	        {
	            maxCount = 20*room_speed;
	        }
	        if htme_globalGet("activePlayers") >= 4
	        {
	            maxCount = 30*room_speed;
	        }
	        htme_globalSet("foxyReady",maxCount,buffer_u16);
	    }
		if global.animatronicChosen = 12 //Withered Freddy
	    {
	        x = 520;
	        y = 360;
	    }
	    if global.animatronicChosen = 13 //Withered Bonnie
	    {
	        x = 440;
	        y = 320;
	    }
	    if global.animatronicChosen = 14 //Withered Chica
	    {
	        x = 600;
	        y = 320;
	    }
	    if global.animatronicChosen = 15 //Withered Foxy
	    {
	        room = rm_kidscove;
	        if htme_globalGet("activePlayers") = 2
	        {
	            maxCount = 15*room_speed;
	        }
	        if htme_globalGet("activePlayers") = 3
	        {
	            maxCount = 20*room_speed;
	        }
	        if htme_globalGet("activePlayers") >= 4
	        {
	            maxCount = 30*room_speed;
	        }
	        htme_globalSet("foxyReady",maxCount,buffer_u16);
	    }
		if global.animatronicChosen = 5 //The Puppet
	    {
	        x = 680;
	        y = 760;
	    }
		if global.animatronicChosen = 6 //Springtrap
	    {
	        x = 40;
	        y = 800;
	    }
	}
	if room = rm_kidscove
	{
	    if global.animatronicChosen = 11 or global.animatronicChosen = 15 //Mangle or Foxy
	    {
	        x = 280;
	        y = 560;
	    }
	}
	//Death Coin
	if global.animatronicChosen != 6 //and global.powerupDeathCoin = 0
	{
	    global.coinLocation = irandom_range(1,22);
	    global.deathCoin = false;
	}
	else
	{
	    global.coinLocation = 11;
	    global.deathCoin = true;
	    /*if global.powerupDeathCoin = 1
	    {
	        ini_open("settings.ini");
	        if ini_read_real("Settings", "DCoinTrial", 1) = 1
	        {
	            ini_write_real("Settings", "DCoinTrial", 0)
	        }
	        else
	        {
	            powerup4 = gms_ini_player_read("Shop","3-4");
	            gms_ini_player_write("Shop","3-4",powerup4-1);
	        }
	        ini_close();
	        global.powerupDeathCoin = 0;
	    }*/
	}
	inVent = 0;
	spawn = false;
}

///Animatronic UI
if room != rm_waitingroom
{
    if !instance_exists(obj_icon)
    {
        instance_create(0,0,obj_icon);
    }
    if !instance_exists(obj_special)
    {
        instance_create(0,0,obj_special);
    }
    if htme_globalGet("mapSelected") = 0 and !instance_exists(obj_minimap1)
    {
        instance_create(0,0,obj_minimap1);
    }
	if htme_globalGet("mapSelected") = 1 and !instance_exists(obj_minimap2)
    {
        instance_create(0,0,obj_minimap2);
    }
    if global.animatronicChosen = 6
    {
        if htme_globalGet("mapSelected") = 0 and !instance_exists(obj_minimap1_bb)
        {
            instance_create(0,0,obj_minimap1_bb);
        }
		if htme_globalGet("mapSelected") = 1 and !instance_exists(obj_minimap2_bb)
        {
            instance_create(0,0,obj_minimap2_bb);
        }
    }
    /*if global.powerupFizzyFaz = 1
    {
        if !instance_exists(obj_fizzyfaz)
        {
            instance_create(0,0,obj_fizzyfaz);
        }
    }*/
}

if room = rm_leftvent
{
	inVent = 1;
}
if room = rm_rightvent
{
	inVent = 2;
}