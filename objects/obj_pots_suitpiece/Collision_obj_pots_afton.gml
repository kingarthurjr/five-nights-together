/// @description Collect or Springlock

if obj_minigame_pots.gameround = suitPiece
{
	if obj_minigame_pots.suit = suitNumber
	{
		audio_play_sound(snd_collect,10,false);
		obj_minigame_pots.gameround += 1;
	}
	else
	{
		audio_play_sound(snd_springlocked,10,false);
		obj_minigame_pots.gameover = true;
	}
}
if obj_minigame_pots.gameround = 5
{
	global.deathCoin = true;
	audio_play_sound(snd_coin,10,false);
	instance_destroy(obj_minigame_pots);
}