//Defaults
depth = -99994;

//Generate Note Order
note[1] = irandom_range(1,4);
note[2] = irandom_range(1,4);
note[3] = irandom_range(1,4);
note[4] = irandom_range(1,4);

ssRound = 1;
ssInstruction = 0;
ssCurrentNote = 1;

gameover = false;

instance_create(0,0,obj_ss_fg);
instance_create(0,0,obj_ss_bonnie);
instance_create(0,0,obj_ss_left);
instance_create(0,0,obj_ss_down);
instance_create(0,0,obj_ss_up);
instance_create(0,0,obj_ss_right);
instance_create(0,0,obj_ss_text);

obj_player.stopMoving = true;

htme_globalSet("bonnieSpecial",1,buffer_bool);