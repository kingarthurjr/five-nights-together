/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//Foxy Ability
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(fnt_fnaf30);
if (global.currentMimic = 3 or scr_get_anim_icon(global.animatronicChosen,true)+1 = 4) and htme_globalGet("foxyReady") > 0
{
	draw_text(902,510,string(round(htme_globalGet("foxyReady")/room_speed)));
}