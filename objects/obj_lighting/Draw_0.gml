var cam = view_get_camera(0);

var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

//Light Surface
if (!surface_exists(light_surface)
|| surface_get_width(light_surface) != cam_w
|| surface_get_height(light_surface) != cam_h)
{
    if (surface_exists(light_surface)) surface_free(light_surface);
    light_surface = surface_create(cam_w, cam_h);
}

surface_set_target(light_surface);
draw_clear_alpha(make_color_rgb(18,18,42),1);

gpu_set_blendmode_ext(bm_zero,bm_inv_src_alpha);

if htme_globalGet("powerOut") = 0
{
	with(obj_player)
	{
		/*if htme_globalGet("mapSelected") = 0 //FNaF1
		{
			draw_sprite_ext(self.sprite_index,self.image_index,x-cam_x,y-cam_y,self.image_xscale,self.image_yscale,self.image_angle,c_black,1-self.darkness);
		}*/
		if htme_globalGet("mapSelected") = 1 //FNaF2
		{
			draw_sprite(spr_light,0,x-cam_x,y-cam_y);
		}
	}
	with(obj_light)
	{
	    draw_sprite_ext(spr_light,0,x-cam_x,y-cam_y,self.image_xscale,self.image_yscale,self.image_angle,self.image_blend,self.image_alpha);
	}
	with(obj_deathcoin)
	{
	    draw_sprite_ext(spr_deathcoin,0,x-cam_x,y-cam_y,self.image_xscale,self.image_yscale,self.image_angle,c_black,self.image_alpha);
	}
	with(obj_door_office1_left)
	{
		draw_sprite_ext(spr_light_door_left1,self.image_index,x-cam_x,y-cam_y,self.image_xscale,self.image_yscale,self.image_angle,self.image_blend,self.image_alpha);
	}
	with(obj_door_office1_right)
	{
		draw_sprite_ext(spr_light_door_right1,self.image_index,x-cam_x,y-cam_y,self.image_xscale,self.image_yscale,self.image_angle,self.image_blend,self.image_alpha);
	}
	with(obj_officehall)
	{
		draw_sprite_ext(self.sprite_index,self.image_index,x-cam_x,y-cam_y,self.image_xscale,self.image_yscale,self.image_angle,c_black,self.image_alpha);
	}
}
with(obj_cam)
{
	draw_sprite_ext(self.sprite_index,self.image_index,x-cam_x,y-cam_y,self.image_xscale,self.image_yscale,self.image_angle,c_black,self.image_alpha);
}

gpu_set_blendmode(bm_normal);
surface_reset_target();