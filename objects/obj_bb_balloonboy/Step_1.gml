//Keyboard Check
if(keyboard_check_pressed(vk_left)) left = true;
if(keyboard_check_pressed(vk_right)) right = true;
if(keyboard_check_released(vk_left)) left = false;
if(keyboard_check_released(vk_right)) right = false;

//Actual Movement
if(keyboard_check(vk_left))
{
    if(!place_meeting(x - spd, y, obj_border)) if ((global.time % 2) = 0){ x -= spd; audio_play_sound(snd_run,10,false);}
    step++;
}
if(keyboard_check(vk_right))
{
    if(!place_meeting(x + spd, y, obj_border)) if ((global.time % 2) = 0){ x += spd; audio_play_sound(snd_run,10,false);}
    step++;
}