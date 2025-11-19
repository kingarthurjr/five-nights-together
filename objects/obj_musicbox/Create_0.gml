//Which Freddy is Active?
if htme_globalGet("freddySelected") or htme_globalGet("mimicSelected")
{
	musicbox = snd_musicbox1;
}
if htme_globalGet("tfreddySelected")
{
	musicbox = snd_musicbox2;
}
if htme_globalGet("wfreddySelected")
{
	musicbox = snd_musicbox3;
}
//Play Audio for Everyone
if !audio_is_playing(musicbox)
{
	audio_play_sound(musicbox,10,false,.1);
}