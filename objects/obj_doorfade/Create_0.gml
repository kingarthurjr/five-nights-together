image_alpha = 0;
//Variable Defaults
var newx, newy, newroom;
facing = null;
inVent = 0;
//Stop Player
obj_player.stopMoving = true;

if !audio_is_playing(snd_transition)
{
    audio_play_sound(snd_transition,10,false);
}