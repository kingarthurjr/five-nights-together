if self.name == "King_ArthurJr"
{
    color = c_blue;
}
else
{
    if self.name == "RugglePuggle" or self.name == "HelloEverybodymynameisMarkipli-" or self.name == "AVoid08"
    {
        color = $37AFD4; //Metallic Gold
    }
    else
    {
        color = c_white;
    }
}

if room_is_network_only(room)
{
    draw_set_colour(color);
    draw_set_font(fnt_fnaf20);
    draw_set_halign(fa_center);
    draw_set_halign(fa_middle);
    draw_text((x*2)+64,(y*2)-64,self.name);
}