///Alternate Keyboard

if global.mobile = false and room != rm_guardwait
{
    if(keyboard_check_pressed(ord("W"))) keyboard_key_press(vk_up);
    if(keyboard_check_pressed(ord("A"))) keyboard_key_press(vk_left);
    if(keyboard_check_pressed(ord("S"))) keyboard_key_press(vk_down);
    if(keyboard_check_pressed(ord("D"))) keyboard_key_press(vk_right);
    
    if(keyboard_check_released(ord("W"))) keyboard_key_release(vk_up);
    if(keyboard_check_released(ord("A"))) keyboard_key_release(vk_left);
    if(keyboard_check_released(ord("S"))) keyboard_key_release(vk_down);
    if(keyboard_check_released(ord("D"))) keyboard_key_release(vk_right);
}

///Keyboard Check Pressed (Global)

//If none of these were used, set them to false
global.leftpressed = false;
global.rightpressed = false;
global.uppressed = false;
global.downpressed = false;
global.zpressed = false;
global.xpressed = false;
global.cpressed = false;

if(keyboard_check_pressed(vk_left)) global.leftpressed = true;
if(keyboard_check_pressed(vk_right)) global.rightpressed = true;
if(keyboard_check_pressed(vk_up)) global.uppressed = true;
if(keyboard_check_pressed(vk_down)) global.downpressed = true;
if(keyboard_check_pressed(ord("C"))) global.cpressed = true;
if(keyboard_check_pressed(ord("X"))) global.xpressed = true;
if(keyboard_check_pressed(ord("Z"))) global.zpressed = true;