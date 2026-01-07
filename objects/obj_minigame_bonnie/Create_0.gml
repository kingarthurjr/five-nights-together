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

instance_create(0,0,obj_minigame_fg);
instance_create(120,180,obj_ss_bonnie);
instance_create(360,80,obj_ss_left);
instance_create(500,60,obj_ss_down);
instance_create(620,60,obj_ss_up);
instance_create(740,80,obj_ss_right);
//instance_create(0,0,obj_ss_text);

global.playerobject.stopMoving = true;

htme_globalSet("bonnieSpecial",1,buffer_bool);