///Keyboard Check
if(keyboard_check_pressed(vk_up)) up = true;
if(keyboard_check_pressed(vk_down)) down = true;
if(keyboard_check_pressed(vk_left)) left = true;
if(keyboard_check_pressed(vk_right)) right = true;
    
if(keyboard_check_released(vk_up)) up = false;
if(keyboard_check_released(vk_down)) down = false;
if(keyboard_check_released(vk_left)) left = false;
if(keyboard_check_released(vk_right)) right = false;

/*
DON'T FORGET!!!
LEFT with all capitals indicates the number 90 (constant),
while left with no capitals indicate if left keyboard is pressed!
*/

///Actual Movement
if(keyboard_check(vk_up))
{
    if(!place_meeting(x, y - spd, obj_minigame_border)) if ((global.time % 2) = 0){ y -= spd;}
    step++;
}

if(keyboard_check(vk_down))
{
    if(!place_meeting(x, y + spd, obj_minigame_border)) if ((global.time % 2) = 0){ y += spd;}
    step++;
}

if(keyboard_check(vk_left))
{
    if(!place_meeting(x - spd, y, obj_minigame_border)) if ((global.time % 2) = 0){ x -= spd;}
    step++;
}

if(keyboard_check(vk_right))
{
    if(!place_meeting(x + spd, y, obj_minigame_border)) if ((global.time % 2) = 0){ x += spd;}
    step++;
}

/*
if(keyboard_check(vk_left) || keyboard_check(vk_right) 
    || keyboard_check(vk_up) || keyboard_check(vk_down)) 
        image_index += spd/15;