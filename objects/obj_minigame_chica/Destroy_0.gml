//Unfreeze Player
obj_player.stopMoving = false;
//Reset Cooldown
obj_special.chicaCooldown = 10*room_speed;
//Destroy Components
instance_destroy(obj_hc_ui);
instance_destroy(obj_hc_chica);
instance_destroy(obj_dough);
instance_destroy(obj_minigame_fg);