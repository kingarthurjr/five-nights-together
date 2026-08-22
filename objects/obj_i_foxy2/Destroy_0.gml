with (obj_foxy_run)
{
	if htme_globalGet("activePlayers") = 2
	{
		alarm[3] = 5*room_speed;
	}
	if htme_globalGet("activePlayers") > 2
	{
		alarm[3] = 10*room_speed;
	}
}
ini_open("settings.ini");
ini_write_real("Game","Foxy2",1);
ini_close();