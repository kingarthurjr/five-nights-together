/// @description No dismiss

// Fade in
card_alpha = min(card_alpha + fade_speed, 1);

if keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right)
{
	instance_change(obj_i_foxy,true);
	audio_play_sound(snd_switch,10,false);
}