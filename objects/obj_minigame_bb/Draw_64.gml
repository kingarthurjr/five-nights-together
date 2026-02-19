//Draw Self
draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha);

//Draw Balloon Count
draw_set_valign(fa_bottom);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(fnt_fnaf50);
draw_text(120,1080,string(balloonCount));