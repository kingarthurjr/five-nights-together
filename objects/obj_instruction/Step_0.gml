// Fade in
card_alpha = min(card_alpha + fade_speed, 1);


// Close card
if (keyboard_check_pressed(ord(global.doorKey)))
{
    audio_play_sound(snd_confirm,1,false);
    instance_destroy();
}