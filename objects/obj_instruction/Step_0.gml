// Fade in
card_alpha = min(card_alpha + fade_speed, 1);

// Close card
if ((keyboard_check_pressed(vk_anykey)) or (mouse_check_button_pressed(mb_left))) and card_alpha = 1
{
    audio_play_sound(snd_confirm,1,false);
    instance_destroy();
}