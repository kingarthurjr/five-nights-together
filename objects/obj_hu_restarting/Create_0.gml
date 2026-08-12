depth = -13;
audio_play_sound(snd_rebooting,10,true);

if htme_globalGet("mapSelected") = 0 //FNaF1
{
	alarm[0] = 240;
}
if htme_globalGet("mapSelected") = 1 //FNaF2
{
	alarm[0] = 180;
}