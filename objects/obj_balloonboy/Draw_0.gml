///Shading

if htme_globalGet("bbLocation") = whichBB
{
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,darkness);
}

event_inherited();