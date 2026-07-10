var gx = display_get_gui_width()/2;
var gy = display_get_gui_height()/2;

x = gx-card_width/2;
y = gy-card_height/2;

//Copy the screen
surface_set_target(blurA);

draw_clear_alpha(c_black,0);

draw_surface_part(
    application_surface,
    x,
    y,
    card_width,
    card_height,
    0,
    0
);

surface_reset_target();

//Horizontal Blur
surface_set_target(blurB);

shader_set(sh_blur_horizontal);

var u = shader_get_uniform(sh_blur_horizontal,"texel");
shader_set_uniform_f(u,1/card_width);

draw_surface(blurA,0,0);

shader_reset();

surface_reset_target();

//Vertical Blur
surface_set_target(blurA);

shader_set(sh_blur_vertical);

u = shader_get_uniform(sh_blur_vertical,"texel");
shader_set_uniform_f(u,1/card_height);

draw_surface(blurB,0,0);

shader_reset();

surface_reset_target();

draw_surface_ext(
    blurA,
    x,
    y,
    1,
    1,
    0,
    c_white,
    fade
);

//White Overlay
draw_set_alpha(.35*fade);

draw_set_color(c_white);

draw_rectangle(
    x,
    y,
    x+card_width,
    y+card_height,
    false
);

draw_set_alpha(1);

//Title
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_fnaf20);

draw_text(
    x+320*2,
    y+180*2,
    card_title
);

//Icon
if (card_icon != -1)
{
    draw_sprite(
        spr_instruction_icon,
        card_icon,
        x+320*2,
        y+95*2
    );
}

//Description
draw_set_font(fnt_fnaf10);

draw_text_ext(
    x+60*2,
    y+250*2,
    card_description,
    34,
    520
);

draw_set_halign(fa_left);
draw_set_valign(fa_top);