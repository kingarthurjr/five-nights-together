//Suit Pieces
if obj_minigame_pots.gameround > 0
{
	if obj_minigame_pots.suit = 0
	{
		if !instance_exists(obj_pots_bonnie_head)
		{
			instance_create(x,y,obj_pots_bonnie_head);
		}
	}
	if obj_minigame_pots.suit = 1
	{
		if !instance_exists(obj_pots_elephant_head)
		{
			instance_create(x,y,obj_pots_elephant_head);
		}
	}
	if obj_minigame_pots.suit = 2
	{
		if !instance_exists(obj_pots_jester_head)
		{
			instance_create(x,y,obj_pots_jester_head);
		}
	}
}
if obj_minigame_pots.gameround > 2
{
	if obj_minigame_pots.suit = 0
	{
		if !instance_exists(obj_pots_bonnie_torso)
		{
			instance_create(x,y,obj_pots_bonnie_torso);
		}
	}
	if obj_minigame_pots.suit = 1
	{
		if !instance_exists(obj_pots_elephant_torso)
		{
			instance_create(x,y,obj_pots_elephant_torso);
		}
	}
	if obj_minigame_pots.suit = 2
	{
		if !instance_exists(obj_pots_jester_torso)
		{
			instance_create(x,y,obj_pots_jester_torso);
		}
	}
}