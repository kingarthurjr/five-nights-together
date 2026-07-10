varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 u_pixel;

void main()
{
    vec4 color = vec4(0.0);

    color += texture2D(gm_BaseTexture,v_vTexcoord + vec2(-4.0,0.0)*u_pixel) * 0.05;
    color += texture2D(gm_BaseTexture,v_vTexcoord + vec2(-2.0,0.0)*u_pixel) * 0.09;
    color += texture2D(gm_BaseTexture,v_vTexcoord) * 0.12;
    color += texture2D(gm_BaseTexture,v_vTexcoord + vec2(2.0,0.0)*u_pixel) * 0.09;
    color += texture2D(gm_BaseTexture,v_vTexcoord + vec2(4.0,0.0)*u_pixel) * 0.05;

    gl_FragColor = color * v_vColour;
}