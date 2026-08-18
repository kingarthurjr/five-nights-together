// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_key_to_string(_key) {
    switch (_key) {
        case vk_space: return "SPACE";
        case vk_tab: return "TAB";
        case vk_enter: return "ENTER";
        case vk_shift: return "SHIFT";
        case vk_control: return "CTRL";
        case vk_alt: return "ALT";
        case vk_escape: return "ESC";
        case vk_left: return "LEFT";
        case vk_right: return "RIGHT";
        case vk_up: return "UP";
        case vk_down: return "DOWN";
        case vk_nokey: return "NONE";
    }
    
    // If it's a letter or number, convert the code back to a letter
    if ((_key >= ord("A") && _key <= ord("Z")) || (_key >= ord("0") && _key <= ord("9"))) {
        return chr(_key);
    }
    
    return string(_key);
}