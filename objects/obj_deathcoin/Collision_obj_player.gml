/// @description Create Minigame

if other.name = global.name
{
	instance_create(0,0,(choose(obj_minigame_dltl,obj_minigame_mm,obj_minigame_pots)));
	instance_destroy();
}