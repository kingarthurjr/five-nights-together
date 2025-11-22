/// @description Jumpscare (FNaF2)

//Is Door Open?
if htme_globalGet("foxyClicked")
{
    obj_player.respawn = true;
    obj_special.foxyReady = false;
    htme_globalSet("foxyReady",maxCount,buffer_u16);
    global.coinLocation = 0;
    global.deathCoin = false;
    obj_player.stopMoving = false;
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