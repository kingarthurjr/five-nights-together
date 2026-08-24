// Inherit the parent event
event_inherited();

//Card Information
title = "THE DEATH COIN";
description = "You will need the death coin before you can enter the office. It is marked on your map.";

if room = rm_diningarea or room = rm_gamearea
{
	icon = 6;
}
else
{
	card_alpha = 1;
	icon = 7;
	color = c_red;
	audio_play_sound(snd_denied,10,false);
}