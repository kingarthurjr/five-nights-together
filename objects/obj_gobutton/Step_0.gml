if !loading
{
	exit;
}


//==================================================
// INCREMENTAL LOADING
//==================================================

var start_time = get_timer();

while load_index < array_length(load_list)
{
	sprite_prefetch(load_list[load_index]);
	load_index++;

	// Stop this Step after approximately 2ms.
	// GameMaker gets control back and can continue
	// processing networking before the next Step.
	if get_timer() - start_time >= load_budget
	{
		break;
	}
}


//==================================================
// FINISHED
//==================================================

if load_index >= array_length(load_list)
{
	loading = false;

	// Guard goes to the selected office.
	if htme_globalGet("name[" + string(htme_globalGet("guardSelected")) + "]") = global.name
	{
		if htme_globalGet("mapSelected") = 0
		{
			room_goto(rm_office1);
		}
		else
		{
			room_goto(rm_office2);
		}
	}
	else
	{
		// Animatronics go to the game area.
		room_goto(rm_gamearea);
	}
}