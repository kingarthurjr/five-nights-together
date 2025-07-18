//Draw Self
draw_sprite_ext(sprite_index,image_index,x*2,y*2,image_xscale*2,image_yscale*2,image_angle,image_blend,image_alpha);

//Temperature Color
if htme_globalGet("buildingTemp") >= 50 and htme_globalGet("buildingTemp") < 80
{
    tempColor = c_white;
}
if htme_globalGet("buildingTemp") >= 80 and htme_globalGet("buildingTemp") < 90
{
    tempColor = c_yellow;
}
if htme_globalGet("buildingTemp") >= 90 and htme_globalGet("buildingTemp") < 100
{
    tempColor = $006AFF
}
if htme_globalGet("buildingTemp") >= 100 and htme_globalGet("buildingTemp") < 200
{
    tempColor = c_red;
}

//Power Percentage
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_font(fnt_dtmono40);
draw_set_colour(c_white);
draw_text(1864,909,htme_globalGet("buildingPower"));

//Building Temperature
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_font(fnt_dtmono24);
draw_set_colour(tempColor);
draw_text(1886,852,htme_globalGet("buildingTemp"));