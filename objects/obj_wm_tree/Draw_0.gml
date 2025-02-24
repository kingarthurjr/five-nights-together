gpu_set_blendmode(bm_normal);
//draw_self();
//gpu_set_blendmode_ext(bm_dest_color,bm_inv_src_alpha);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.color,image_alpha);
gpu_set_blendmode(bm_normal);