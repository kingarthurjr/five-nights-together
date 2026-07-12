var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();
var _cx = (_gui_w - card_width) / 2;
var _cy = (_gui_h - card_height) / 2;

// ==========================================
// 1. THE BLUR EFFECT (Frosted Glass)
// ==========================================
var _app_w = surface_get_width(application_surface);
var _app_h = surface_get_height(application_surface);
var _scale_x = _app_w / _gui_w;
var _scale_y = _app_h / _gui_h;
var _downscale = 75; // High number for heavy blur

// Try to create the surface if it's missing
if (!surface_exists(blur_surf)) {
    blur_surf = surface_create(card_width / _downscale, card_height / _downscale);
}

// SAFE CHECK: Only target and draw if the surface actually exists
if (surface_exists(blur_surf)) {
    
    surface_set_target(blur_surf);
    
    // 1. Fill the tiny canvas with 100% solid opacity
    draw_clear_alpha(c_black, 1.0);
    
    // 2. Turn off blending
    gpu_set_blendenable(false); 
    
    // 3. THE FIX: Lock the alpha channel! (Red, Green, Blue, Alpha)
    // By setting the last one to false, we prevent the application 
    // surface from transferring its transparent background to our blur.
    gpu_set_colorwriteenable(true, true, true, false);

    // Draw the screen chunk
    draw_surface_part_ext(application_surface,
        _cx * _scale_x, _cy * _scale_y,
        card_width * _scale_x, card_height * _scale_y,
        0, 0,
        1 / (_downscale * _scale_x), 1 / (_downscale * _scale_y),
        c_white, 1);

    // 4. Reset GPU settings back to normal so we don't break the rest of the game
    gpu_set_colorwriteenable(true, true, true, true);
    gpu_set_blendenable(true); 
    
    surface_reset_target();

    // Stretch the blur back up to full size
    var _prev_filter = gpu_get_tex_filter();
    gpu_set_tex_filter(true);
    
    draw_surface_stretched_ext(blur_surf, _cx, _cy, card_width, card_height, c_white, card_alpha);
    
    gpu_set_tex_filter(_prev_filter);
}


// ==========================================
// 2. THE WHITE OVERLAY
// ==========================================
// Multiply our target transparency (0.85) by the card_alpha
draw_set_alpha(0.25 * card_alpha); 
draw_set_color(c_white);
draw_rectangle(_cx, _cy, _cx + card_width, _cy + card_height, false);


// ==========================================
// 3. DRAWING THE CONTENT
// ==========================================
var _center_x = _gui_w / 2;
draw_set_halign(fa_center);
draw_set_color(color); 
draw_set_alpha(card_alpha); // Applies fade to all text

// -- DRAW TITLE --
draw_set_valign(fa_top);
draw_set_font(fnt_fnaf20); 
draw_text(_center_x, _cy + 40, title);

// -- DRAW ICON --

draw_sprite_ext(spr_instruction_icon, icon, _center_x, _cy + (card_height / 2), 1, 1, 0, c_white, card_alpha);

// -- DRAW DESCRIPTION --
draw_set_valign(fa_middle);
draw_set_font(fnt_fnaf18);
draw_text_ext(_center_x, _cy + card_height - 40, description, 40, card_width - 20);

// Reset text alignment and alpha so it doesn't mess up the rest of your game
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1.0);