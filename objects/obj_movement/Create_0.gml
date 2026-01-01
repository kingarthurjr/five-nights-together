depth = -8;
randomize();
alarm[0] = 90;
if htme_globalGet("mapSelected") = 0 //FNaF1
{
	sprite_index = spr_movement1;
	audio_play_sound(choose(snd_garble1,snd_garble2,snd_garble3),10,true);
}
if htme_globalGet("mapSelected") = 1 //FNaF2
{
	sprite_index = spr_movement2;
	audio_play_sound(snd_stare,10,true,1,61*room_speed);
}