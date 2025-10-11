obj_player.stopMoving = true;

camNumber = obj_doorOffice.camNumber
dont = false;
setAlarm = false;

if htme_globalGet("mapSelected") = 0 //FNaF1
{
	if ds_list_size(htme_getPlayers()) = 2
	{
	    timer = room_speed*5;
	}
	if ds_list_size(htme_getPlayers()) = 3
	{
	    timer = room_speed*6;
	}
	if ds_list_size(htme_getPlayers()) = 4
	{
	    timer = room_speed*8;
	}
	if ds_list_size(htme_getPlayers()) >= 5
	{
	    timer = room_speed*10;
	}
}
if htme_globalGet("mapSelected") = 1 //FNaF2
{
	if camNumber = 1
	{
		if ds_list_size(htme_getPlayers()) = 2
		{
		    timer = room_speed*3;
		}
		else if ds_list_size(htme_getPlayers()) <= 4
		{
		    timer = room_speed*4;
		}
		else if ds_list_size(htme_getPlayers()) >= 5
		{
		    timer = room_speed*5;
		}
	}
	else
	{
		if ds_list_size(htme_getPlayers()) = 2
		{
		    timer = room_speed*5;
		}
		if ds_list_size(htme_getPlayers()) = 3
		{
		    timer = room_speed*6;
		}
		if ds_list_size(htme_getPlayers()) = 4
		{
		    timer = room_speed*8;
		}
		if ds_list_size(htme_getPlayers()) >= 5
		{
		    timer = room_speed*10;
		}
	}
}