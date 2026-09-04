//==================================================
// INCREMENTAL LOADING
//==================================================

// Give the loading screen a moment to appear.
if load_delay > 0
{
	load_delay--;
	exit;
}


// Start the timer for this Step.
var start_time = get_timer();


// Keep loading until our small time budget is used.
while load_index < array_length(load_list)
{
	sprite_prefetch(load_list[load_index]);
	load_index++;

	if get_timer() - start_time >= load_budget
	{
		break;
	}
}


// Everything has been loaded.
if load_index >= array_length(load_list)
{
	room_goto_next();
}