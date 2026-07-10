// Fade in
fade = min(fade + 0.08,1);

// Close card
if (keyboard_check_pressed(ord(global.doorKey)))
{
    audio_play_sound(snd_confirm,1,false);
    instance_destroy();
}