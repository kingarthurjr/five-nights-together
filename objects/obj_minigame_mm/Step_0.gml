//Game Over
if gameover = true
{
    instance_destroy();
    global.coinLocation = 0;
	global.deathCoin = false;
    obj_player.spawn = true;
    if htme_globalGet("mapSelected") = 0 //If FNaF1
	{
		room = rm_diningarea;
	}
	if htme_globalGet("mapSelected") = 1 //If FNaF2
	{
		room = rm_gamearea;
	}
}