/// @description Jumpscare

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
if door = 1
{
    htme_globalSet("bonk",1,buffer_bool);
    audio_play_sound(snd_bonk,10,false);
    obj_player.respawn = true;
    obj_special.foxyReady = false;
    htme_globalSet("foxyReady",maxCount,buffer_u16);
    global.coinLocation = 0;
    global.deathCoin = false;
    room = rm_diningarea;
    global.playerobject.stopMoving = false;
}
else
{
    htme_globalSet("jumpscare",1,buffer_bool);
    htme_globalSet("ranIn",1,buffer_bool);
    htme_globalSet("whoGot",global.animatronicChosen,buffer_u8);
    room_goto(rm_gameover);
}