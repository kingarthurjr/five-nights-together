audio_play_sound(choose(snd_click1,snd_click2,snd_click3),10,false);
if room = rm_characterselect0
{
	if htme_globalGet("mapSelected") = 0 //FNaF1
	{
		room = rm_characterselect1;
	}
	if htme_globalGet("mapSelected") = 1 //FNaF2
	{
		room = rm_characterselect2;
	}
}
else
{
	room = rm_characterselect0;
}