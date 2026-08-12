//Which Freddy is Active?
if htme_globalGet("freddyTaken") != "noone" or htme_globalGet("mimicTaken") != "noone"
{
	musicbox = snd_musicbox1;
}
if htme_globalGet("wfreddyTaken") != "noone"
{
	musicbox = snd_musicbox2;
}
if htme_globalGet("tfreddyTaken") != "noone"
{
	musicbox = snd_musicbox3;
}
//Play Audio for Everyone
if !audio_is_playing(musicbox)
{
	audio_play_sound(musicbox,10,false);
}