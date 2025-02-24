//Show the role you have
if htme_globalGet("name["+string(htme_globalGet("guardSelected"))+"]") = global.name
{
	sprite_index = spr_helpy_nightguard;
	global.nightGuard = 1;
}
else
{
	sprite_index = spr_helpy_animatronic;
	global.animatronic = 1;
}

//Play the sound
amongus = irandom_range(1,100);
if amongus <= 2
{
    audio_play_sound(snd_amongus,10,false);   
}
else
{
    audio_play_sound(snd_boom,10,false);
}

alarm[0] = 150;