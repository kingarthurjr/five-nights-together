done = true;

if room = rm_waitingroom
{
	//Choose Random Guard
	if htme_isServer()
	{
		if htme_globalGet("guardSelected") = -1
		{
			randomize();
			htme_globalSet("guardSelected",irandom_range(0,ds_list_size(htme_getPlayers())-1),buffer_s8);
		}
	}
	room_goto(rm_loading);
}
if room = rm_characterselect1
{
	room_goto(rm_diningarea);
}
if room = rm_characterselect2
{
	room_goto(rm_gamearea);
}
instance_destroy();