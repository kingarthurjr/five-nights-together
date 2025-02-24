/// @description Next Guard

current = htme_globalGet("guardSelected");
if current < (ds_list_size(htme_getPlayers())-1) //If there are more players
{
	htme_globalSet("guardSelected",current+1,buffer_s8);
	audio_play_sound(snd_switch,10,false);
	audio_play_sound(choose(snd_click1,snd_click2,snd_click3),10,false);
}
else
{
	audio_play_sound(snd_doorror,10,false);
}