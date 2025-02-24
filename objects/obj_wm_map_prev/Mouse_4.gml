/// @description Previous Map

current = htme_globalGet("mapSelected");
if current > 0 //If you're not on "FNaF1" yet
{
	htme_globalSet("mapSelected",current-1,buffer_u8);
	audio_play_sound(snd_switch,10,false);
	audio_play_sound(choose(snd_click1,snd_click2,snd_click3),10,false);
}
else
{
	audio_play_sound(snd_doorror,10,false);
}