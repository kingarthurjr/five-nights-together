//Game Over
if gameover = true
{
    instance_destroy();
    htme_globalSet("deathCoinLocation",0,buffer_s8);
    global.deathCoin = false;
    obj_player.spawn = true;
    if htme_globalGet("mapSelected") = 0 //If FNaF1
	{
		room = rm_diningarea;
	}
	if htme_globalGet("mapSelected") = 1 //If FNaF2
	{
		room = rm_gamearea;
	}
}

//Round 2
if gameround = 1
{
	//Reset Afton
	obj_pots_afton.x = 460;
	obj_pots_afton.y = 120;
	//Destroy Remaining Suit Layout
	if instance_exists(obj_pots_bonnie_head)
	{
		instance_destroy(obj_pots_bonnie_head);
	}
	if instance_exists(obj_pots_elephant_head)
	{
		instance_destroy(obj_pots_elephant_head);
	}
	if instance_exists(obj_pots_jester_head)
	{
		instance_destroy(obj_pots_jester_head);
	}
	//Create New Layout
	var suit_options = [obj_pots_bonnie_torso,obj_pots_elephant_torso,obj_pots_jester_torso];
	for (var i = array_length(suit_options) - 1; i > 0; i--)
	{
	    var j = irandom(i);
	    var temp = suit_options[i];
	    suit_options[i] = suit_options[j];
	    suit_options[j] = temp;
	}
	instance_create(240,380,suit_options[0]);
	instance_create(460,380,suit_options[1]);
	instance_create(680,380,suit_options[2]);
	//Wait for Next Round
	gameround = 2;
}
//Round 3
if gameround = 3
{
	//Reset Afton
	obj_pots_afton.x = 460;
	obj_pots_afton.y = 120;
	//Destroy Remaining Suit Layout
	if instance_exists(obj_pots_bonnie_torso)
	{
		instance_destroy(obj_pots_bonnie_torso);
	}
	if instance_exists(obj_pots_elephant_torso)
	{
		instance_destroy(obj_pots_elephant_torso);
	}
	if instance_exists(obj_pots_jester_torso)
	{
		instance_destroy(obj_pots_jester_torso);
	}
	//Create New Layout
	var suit_options = [obj_pots_bonnie_legs,obj_pots_elephant_legs,obj_pots_jester_legs];
	for (var i = array_length(suit_options) - 1; i > 0; i--)
	{
	    var j = irandom(i);
	    var temp = suit_options[i];
	    suit_options[i] = suit_options[j];
	    suit_options[j] = temp;
	}
	instance_create(240,340,suit_options[0]);
	instance_create(460,340,suit_options[1]);
	instance_create(680,340,suit_options[2]);
	//Wait for Next Round
	gameround = 4;
}