done = true;
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
instance_destroy();