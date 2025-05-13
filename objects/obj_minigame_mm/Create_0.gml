//Defaults
depth = -99994;
gameover = false;
davidAlready = false;

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
instance_create(0,0,obj_minigame_border);
instance_create(280,160,obj_mm_afton);
instance_create(164,132,obj_mm_road);
instance_create(392,132,obj_mm_road);
instance_create(620,132,obj_mm_road);
instance_create(840,132,obj_mm_road);
alarm[1] = irandom_range(20,30);
alarm[2] = irandom_range(20,30);

//Stop the Player
obj_player.stopMoving = true;

//Music
if global.music = true
{
	audio_play_sound(mus_motorist,10,true,.1,choose(0,11));
}