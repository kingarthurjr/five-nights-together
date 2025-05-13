/// @description Instant Win

audio_play_sound(snd_david,10,false);
global.deathCoin = true;
audio_play_sound(snd_coin,10,false);
//Add David Achievement Here.
instance_destroy(obj_minigame_mm);