if (surface_exists(application_surface) && surface_exists(light_surface))
{
    shader_set(sh_fog_crt);

    shader_set_uniform_f(u_curve,curve_amt);
    texture_set_stage(u_lightTex,surface_get_texture(light_surface));

    //draw_surface(application_surface,0,0);
	draw_surface_stretched(application_surface,0,0,window_get_width(),window_get_height());

    shader_reset();
}

// Build UI on its own surface
var cam = view_get_camera(0);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

if (!surface_exists(ui_surface)
|| surface_get_width(ui_surface) != cam_w
|| surface_get_height(ui_surface) != cam_h)
{
    if (surface_exists(ui_surface)) surface_free(ui_surface);
    ui_surface = surface_create(cam_w, cam_h);
}

surface_set_target(ui_surface);
draw_clear_alpha(c_black, 0);

with(obj_chromabb)
{
    event_user(0);
}
with(obj_mimic_icon)
{
    event_user(0);
}
with(obj_mimic_instruct)
{
    event_user(0);
}
with(obj_deathCountdown)
{
    event_user(0);
}
with(obj_minimap1_puppet)
{
    event_user(0);
}
with(obj_minimap1_disabled)
{
    event_user(0);
}
with(obj_minimap2_puppet)
{
    event_user(0);
}
with(obj_minimap2_disabled)
{
    event_user(0);
}

surface_reset_target();

// Draw UI through CRT only
shader_set(sh_crt_only);
shader_set_uniform_f(u_curve_only, curve_amt);
draw_surface_stretched(ui_surface,0,0,window_get_width(),window_get_height());
shader_reset();