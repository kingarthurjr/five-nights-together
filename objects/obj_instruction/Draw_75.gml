var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();


// Create surfaces
if (!surface_exists(scene_surface)
|| surface_get_width(scene_surface) != gui_w
|| surface_get_height(scene_surface) != gui_h)
{
    if (surface_exists(scene_surface))
        surface_free(scene_surface);

    scene_surface = surface_create(gui_w, gui_h);
}


if (!surface_exists(blur_surface)
|| surface_get_width(blur_surface) != gui_w
|| surface_get_height(blur_surface) != gui_h)
{
    if (surface_exists(blur_surface))
        surface_free(blur_surface);

    blur_surface = surface_create(gui_w, gui_h);
}


//------------------------------------------------
// Capture current screen
//------------------------------------------------

surface_set_target(scene_surface);

draw_clear_alpha(c_black,0);

draw_surface(application_surface,0,0);

surface_reset_target();


//------------------------------------------------
// Horizontal blur
//------------------------------------------------

surface_set_target(blur_surface);

draw_clear_alpha(c_black,0);

shader_set(sh_blur_horizontal);

shader_set_uniform_f(
    u_blur_x,
    1 / gui_w
);

draw_surface(scene_surface,0,0);

shader_reset();

surface_reset_target();


//------------------------------------------------
// Vertical blur + panel area
//------------------------------------------------

draw_set_alpha(card_alpha);

shader_set(sh_blur_vertical);

shader_set_uniform_f(
    u_blur_y,
    1 / gui_h
);

draw_surface_part(
    blur_surface,
    card_x,
    card_y,
    card_w,
    card_h,
    card_x,
    card_y
);

shader_reset();


//------------------------------------------------
// Frosted glass overlay
//------------------------------------------------

draw_set_alpha(card_alpha * 0.35);
draw_set_color(c_white);

draw_rectangle(
    card_x,
    card_y,
    card_x + card_w,
    card_y + card_h,
    false
);


//------------------------------------------------
// Card Background
//------------------------------------------------

draw_set_alpha(card_alpha * 0.35);
draw_set_color(c_white);

draw_roundrect(
    card_x,
    card_y,
    card_x + card_w,
    card_y + card_h,
    false
);

draw_set_alpha(card_alpha);

draw_set_color(c_white);


//------------------------------------------------
// Title
//------------------------------------------------

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fnt_fnaf20);

draw_text(
    card_x + card_w * 0.5,
    card_y + 55,
    card_title
);


//------------------------------------------------
// Icon
//------------------------------------------------

draw_sprite_ext(
    spr_instruction_icon,
    card_icon,
    card_x + card_w * 0.5,
    card_y + 285,
    1,
    1,
    0,
    c_white,
    card_alpha
);


//------------------------------------------------
// Description
//------------------------------------------------

draw_set_font(fnt_fnaf10);

draw_text_ext(
    card_x + card_w * 0.5,
    card_y + 455,
    card_description,
	42,
    card_w - 80
);


//------------------------------------------------
// Reset
//------------------------------------------------

draw_set_alpha(1);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(c_white);