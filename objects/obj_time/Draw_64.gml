//draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha);

//Time
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_font(fnt_dtmono50);
draw_set_colour(c_white);
draw_text(1880,20,string(time)+"AM");