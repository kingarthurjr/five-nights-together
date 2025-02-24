/// @description Next Map

current = htme_globalGet("mapSelected");
if current < 1 //If on latest map
{
	htme_globalSet("mapSelected",current+1,buffer_u8);
	audio_play_sound(snd_switch,10,false);
	audio_play_sound(choose(snd_click1,snd_click2,snd_click3),10,false);
}
else
{
	audio_play_sound(snd_doorror,10,false);
}