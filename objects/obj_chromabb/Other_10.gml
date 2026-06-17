if isUI = true
{
	if room != rm_waitingroom
	{
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
	}
	else
	{
		gpu_set_blendmode(bm_normal);
		//draw_self();
		//gpu_set_blendmode_ext(bm_dest_color,bm_inv_src_alpha);
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.color,image_alpha);
		gpu_set_blendmode(bm_normal);
	}
}