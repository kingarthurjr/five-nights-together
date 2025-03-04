if htme_globalGet("powerOut") = 1
{
	sprite_index = spr_handunit_up_dark;
}
else
{
	sprite_index = spr_handunit_up;
}

audio_play_sound(snd_flip3,10,false);