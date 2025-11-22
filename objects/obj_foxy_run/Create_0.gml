/// @description Start Running

//Start Running
htme_globalSet("foxyRunning",1,buffer_bool);
alarm[0] = 60;
obj_player.stopMoving = true;

//What Sound to Play
if htme_globalGet("mapSelected") = 0 //FNaF1
{
	audio_play_sound(snd_sprint,10,false);
}
if htme_globalGet("mapSelected") = 1 //FNaF2
{
	if htme_globalGet("wfoxySelected")
	{
		randomize();
		audio_play_sound(choose(snd_foxylaugh1,snd_foxylaugh2,snd_foxylaugh3),10,false);
	}
	if htme_globalGet("mangleSelected")
	{
		audio_play_sound(snd_mangle,10,true);
	}
	if htme_globalGet("mimicSelected")
	{
		randomize();
		audio_play_sound(snd_foxylaugh_mimic,10,false);
	}
}

//Which Door?
closestDoor = 0;
if room = rm_backstage or room = rm_closet or room = rm_westhall or room = rm_dininghall
{
    closestDoor = 1;
}
if room = rm_easthall or room = rm_bathrooms or room = rm_kitchen
{
    closestDoor = 2;
}

//Reset Prep
if htme_globalGet("activePlayers") = 2
{
    maxCount = 450;
}
if htme_globalGet("activePlayers") = 3
{
    maxCount = 450;
}
if htme_globalGet("activePlayers") = 3
{
    maxCount = 600;
}
if htme_globalGet("activePlayers") >= 4
{
    maxCount = 900;
}