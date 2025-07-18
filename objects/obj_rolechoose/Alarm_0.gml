if global.nightGuard = 1
{
	room_goto(rm_guardwait);
}
if global.animatronic = 1
{
    if htme_globalGet("mapSelected") = 0 //If FNaF1
	{
		room_goto(rm_characterselect1);
	}
}