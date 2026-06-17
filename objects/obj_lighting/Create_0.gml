application_surface_draw_enable(false);

light_surface = -1;
ui_surface = -1;

// World shader uniforms
u_lightTex = shader_get_sampler_index(sh_fog_crt, "u_lightTex");
u_curve    = shader_get_uniform(sh_fog_crt, "u_curve");

// CRT-only shader uniforms
u_curve_only = shader_get_uniform(sh_crt_only, "u_curve");

// CRT strength
curve_amt = 0.07;