/// @description Tab Switching

if global.currentMimic = 3
{
	global.currentMimic = 0
}
else if global.currentMimic < 3
{
	global.currentMimic += 1
}
audio_play_sound(snd_confirm,10,false);