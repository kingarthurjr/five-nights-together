if htme_globalGet("cameraOut") = 0
{
    draw_set_font(fnt_fnaf30);
    draw_set_color(c_white);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    if teaseFUN = 2
    {
        draw_text(1120,215,"QRW UHDGB WR OHW LW JR BHW");
    }
    else
    {
        if htme_globalGet("camera") = 0
        {
            draw_text(1120,215,"Show Stage");
        }
        if htme_globalGet("camera") = 5
        {
            draw_text(1120,215,"Prize Corner");
        }
        if htme_globalGet("camera") = 6
        {
            draw_text(1120,215,"Game Area");
        }
        if htme_globalGet("camera") = 7
        {
            draw_text(1120,215,"Kid's Cove");
        }
        if htme_globalGet("camera") = 8
        {
            draw_text(1120,215,"Main Hall");
        }
        if htme_globalGet("camera") = 9
        {
            draw_text(1120,215,"Parts/Service");
        }
        if htme_globalGet("camera") = 10
        {
            draw_text(1120,215,"Party Room 1");
        }
        if htme_globalGet("camera") = 11
        {
            draw_text(1120,215,"Party Room 2");
        }
        if htme_globalGet("camera") = 12
        {
            draw_text(1120,215,"Party Room 3");
        }
        if htme_globalGet("camera") = 13
        {
            draw_text(1120,215,"Party Room 4");
        }
        if htme_globalGet("camera") = 14
        {
            draw_text(1120,215,"Left Air Vent");
        }
		if htme_globalGet("camera") = 15
        {
            draw_text(1120,215,"Right Air Vent");
        }
    }
}