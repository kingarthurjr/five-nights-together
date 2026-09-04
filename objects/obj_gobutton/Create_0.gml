instance_create(0,0,obj_switch);

// Loading state
loading = false;

// Sprite loading queue
load_list = [];
load_index = 0;

// Maximum amount of time, in microseconds, to spend
// prefetching during one Step.
load_budget = 2000;

// Helper for adding a sprite to the loading queue.
add_load = function(_sprite)
{
	load_list[array_length(load_list)] = _sprite;
};