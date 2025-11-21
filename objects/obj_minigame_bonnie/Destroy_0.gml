//Unpause Player
obj_player.stopMoving = false;

//Destroy Minigame Components
instance_destroy(obj_ss_fg);
instance_destroy(obj_ss_bonnie);
instance_destroy(obj_ss_left);
instance_destroy(obj_ss_down);
instance_destroy(obj_ss_up);
instance_destroy(obj_ss_right);
instance_destroy(obj_ss_instruction);
instance_destroy(obj_ss_text);

//Tell server the minigame is OFF
htme_globalSet("bonnieSpecial",0,buffer_bool);