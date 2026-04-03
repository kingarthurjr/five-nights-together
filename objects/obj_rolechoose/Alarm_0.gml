if global.nightGuard = 1
{
	room_goto(rm_guardwait);
}
if global.animatronic = 1
{
    if htme_globalGet("activePlayers") = 2
	{
		room_goto(rm_characterselect0);
	}
	else
	{
		if htme_globalGet("mapSelected") = 0 //FNaF1
		{
			room_goto(rm_characterselect1);
		}
		if htme_globalGet("mapSelected") = 1 //FNaF2
		{
			room_goto(rm_characterselect2);
		}
	}
}