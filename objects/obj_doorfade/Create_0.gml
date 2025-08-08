var newx, newy, newroom;

facing = null;

obj_player.stopMoving = true;

if !audio_is_playing(snd_transition)
{
    audio_play_sound(snd_transition,10,false);
}