///Assure Light Surface is Drawn
if (!surface_exists(self.light_surface)) 
{
	self.light_surface = surface_create(camera_get_view_width(view_get_camera(0)),camera_get_view_height(view_get_camera(0)));
}

///Set Blue Darkness
surface_set_target(self.light_surface);
draw_clear(#000010);
camera_apply(view_get_camera(0));
///Draw Lighting
gpu_set_blendmode(bm_subtract);
with(obj_light)
{
    draw_sprite_ext(spr_light,0,self.x,self.y,self.image_xscale,self.image_yscale,self.image_angle,self.image_blend,self.image_alpha);
}
gpu_set_blendmode(bm_normal);
///Finish
surface_reset_target();