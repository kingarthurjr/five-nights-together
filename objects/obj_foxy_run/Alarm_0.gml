/// @description Door Check

//Which Door to Enter?
if closestDoor = 1
{
	door = htme_globalGet("doorLeft");
}
if closestDoor = 2
{
	door = htme_globalGet("doorRight");
}

//Is Door Open?
if door = 1 and htme_globalGet("mapSelected") != 1
{
    htme_globalSet("bonk",1,buffer_bool);
    audio_play_sound(snd_bonk,10,false);
    obj_player.respawn = true;
    obj_special.foxyReady = false;
    htme_globalSet("foxyReady",maxCount,buffer_u16);
    global.coinLocation = 0;
    global.deathCoin = false;
    room = rm_diningarea;
    obj_player.stopMoving = false;
}
else
{
    if htme_globalGet("mapSelected") = 0 //FNaF1
	{
		if htme_globalGet("activePlayers") < 3
	    {
	        alarm[1] = 10;
	        alarm[2] = 1;
	    }
	    if htme_globalGet("activePlayers") = 3
	    {
	        alarm[1] = 20;
	        alarm[2] = 10;
	    }
	    if htme_globalGet("activePlayers") > 3
	    {
	        alarm[1] = 30;
	        alarm[2] = 20;
	    }
	}
	if htme_globalGet("mapSelected") = 1 //FNaF2
	{
		if htme_globalGet("activePlayers") = 2
	    {
			alarm[3] = 3*room_speed;
		}
		if htme_globalGet("activePlayers") > 2
	    {
			alarm[3] = 5*room_speed;
		}
	}
}