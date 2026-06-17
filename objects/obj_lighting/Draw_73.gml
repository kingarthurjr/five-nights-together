///Restore Application Surface
//draw_surface(application_surface, 0, 0);

///Draw Lighting
draw_set_alpha(0.9);
draw_surface_stretched(self.light_surface,camera_get_view_x(view_get_camera(0)),camera_get_view_y(view_get_camera(0)),camera_get_view_width(view_get_camera(0)),camera_get_view_height(view_get_camera(0)));
draw_set_alpha(1);