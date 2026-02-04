//Follow the camera
x = camera_get_view_x(view_camera[0])+900;
y = camera_get_view_y(view_camera[0])+480;

//Foxy Ability
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(fnt_fnaf30);
if (global.currentMimic = 3 or scr_get_anim_icon(global.animatronicChosen,true)+1 = 4) and htme_globalGet("foxyReady") > 0
{
	draw_text(camera_get_view_x(view_camera[0])+902,camera_get_view_y(view_camera[0])+510,string(round(htme_globalGet("foxyReady")/room_speed)));
}

//Chromatic Aberration
gpu_set_blendmode(bm_normal);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_green,image_alpha);
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_green,image_alpha);
draw_sprite_ext(sprite_index,image_index,x-blur,y,image_xscale,image_yscale,image_angle,c_red,image_alpha);//divide 2 if bad
draw_sprite_ext(sprite_index,image_index,x+blur,y,image_xscale,image_yscale,image_angle,c_blue,image_alpha);//divide 2 if bad
gpu_set_blendmode(bm_normal);
if object_index = obj_player
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,obj_player.darkness);
}