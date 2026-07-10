varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float texel;

void main()
{
    vec4 col = vec4(0.0);

    col += texture2D(gm_BaseTexture, v_vTexcoord + vec2(-4.0*texel,0.0))*0.05;
    col += texture2D(gm_BaseTexture, v_vTexcoord + vec2(-3.0*texel,0.0))*0.09;
    col += texture2D(gm_BaseTexture, v_vTexcoord + vec2(-2.0*texel,0.0))*0.12;
    col += texture2D(gm_BaseTexture, v_vTexcoord + vec2(-1.0*texel,0.0))*0.15;
    col += texture2D(gm_BaseTexture, v_vTexcoord)*0.18;
    col += texture2D(gm_BaseTexture, v_vTexcoord + vec2(1.0*texel,0.0))*0.15;
    col += texture2D(gm_BaseTexture, v_vTexcoord + vec2(2.0*texel,0.0))*0.12;
    col += texture2D(gm_BaseTexture, v_vTexcoord + vec2(3.0*texel,0.0))*0.09;
    col += texture2D(gm_BaseTexture, v_vTexcoord + vec2(4.0*texel,0.0))*0.05;

    gl_FragColor = col * v_vColour;
}