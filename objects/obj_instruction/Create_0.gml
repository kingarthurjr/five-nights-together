card_x = 640;
card_y = 240;

card_w = 640;
card_h = 600;


// Fade in
card_alpha = 0;
fade_speed = 0.12;


// Surfaces
scene_surface = -1;
blur_surface = -1;


// Shader uniforms
u_blur_x = shader_get_uniform(sh_blur_horizontal, "u_pixel");
u_blur_y = shader_get_uniform(sh_blur_vertical, "u_pixel");

audio_play_sound(snd_instruction,10,false);