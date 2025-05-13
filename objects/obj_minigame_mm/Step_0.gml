//Game Over
if gameover = true
{
    instance_destroy();
    htme_globalSet("deathCoinLocation",0,buffer_s8);
    global.deathCoin = false;
    obj_player.spawn = true;
    if htme_globalGet("mapSelected") = 0 //If FNaF1
	{
		room = rm_diningarea;
	}
}