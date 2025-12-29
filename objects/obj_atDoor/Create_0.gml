depth = -99998;
event_inherited();
camNumber = obj_stat.newCam;

if htme_globalGet("mapSelected") = 0 //FNaF1
{
	spawn = rm_diningarea;
}
if htme_globalGet("mapSelected") = 1 //FNaF2
{
	spawn = rm_gamearea;
}

/*if global.mobile = true
{
    zkey = virtual_key_add(1754,892,142,172,ord('Z'));
}*/