/// @description Insert description here
// You can write your code in this editor

if (steam_initialised()) return;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text_transformed(room_width/2, room_height/2, "You are not logged in to steam!!\nStart Steam and restart game", 2, 2, 0);
