precision mediump float;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D u_lightTex;
uniform float u_curve;

vec2 crt_curve(vec2 uv, float amount)
{
    vec2 p = uv * 2.0 - 1.0;
    float r2 = dot(p, p);
    p *= 1.0 + (r2 * amount);
    return p * 0.5 + 0.5;
}

vec3 color_burn(vec3 base, vec3 blend)
{
    vec3 safeBlend = max(blend, vec3(0.08));
    vec3 outCol = 1.0 - (1.0 - base) / safeBlend;
    return clamp(outCol, 0.0, 1.0);
}

void main()
{
    vec2 uv = crt_curve(v_vTexcoord, u_curve);

    if (uv.x < 0.0 || uv.x > 1.0 || uv.y < 0.0 || uv.y > 1.0)
    {
        gl_FragColor = vec4(0.0, 0.0, 0.0, 1.0);
        return;
    }

    vec4 scene = v_vColour * texture2D(gm_BaseTexture, uv);
    vec4 fog   = texture2D(u_lightTex, uv);

    vec3 multiplied = scene.rgb * fog.rgb;

	scene.rgb = mix(scene.rgb, multiplied, fog.a);

    gl_FragColor = scene;
}