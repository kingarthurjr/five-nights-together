//Defaults
depth = -99994;
gameover = false;

//Set Minigame Timer
if htme_globalGet("activePlayers") <= 3
{
    alarm[0] = 187;
}
else
{
    alarm[0] = 375;
}

//Create Minigame Components
instance_create(0,0,obj_minigame_fg);
instance_create(0,0,obj_dltl_wall);
instance_create(0,0,obj_minigame_border);
instance_create(640,300,obj_dltl_fredbear);
instance_create(50,380,obj_dltl_createFreddy);
instance_create(50,480,obj_dltl_createBonnie);
instance_create(50,180,obj_dltl_createChica);
instance_create(50,280,obj_dltl_createFoxy);

//Stop the Player
obj_player.stopMoving = true;

//Music
if global.music = true
{
	audio_play_sound(mus_fredbear,10,true,.1,choose(0,11));
}