//Follow the camera
x = camera_get_view_x(view_camera[0])+900;
y = camera_get_view_y(view_camera[0])+480;

//Foxy Ability
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(fnt_fnaf40);
if (global.currentMimic = 3 or scr_get_anim_icon(global.animatronicChosen,true)+1 = 4) and htme_globalGet("foxyReady") > 0
{
	draw_text(camera_get_view_x(view_camera[0])+902,camera_get_view_y(view_camera[0])+525,string(round(htme_globalGet("foxyReady")/room_speed)));
}

//Chromatic Aberration
event_inherited();