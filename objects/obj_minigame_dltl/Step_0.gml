if gameover = true
{
    instance_destroy();
    htme_globalSet("deathCoinLocation",0,buffer_s8);
    global.deathCoin = false;
    obj_player.spawn = true;
    room = rm_dininghall;
}