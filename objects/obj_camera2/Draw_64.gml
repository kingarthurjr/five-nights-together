if htme_globalGet("cameraOut") = 0
{
    draw_set_font(fnt_fnaf30);
    draw_set_color(c_white);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    if teaseFUN = 2
    {
        draw_text(1120,215,"QHZ DQG LPSURYHG");
    }
    else
    {
        if htme_globalGet("camera") = 0
        {
            draw_text(1120,215,"Show Stage");
        }
        if htme_globalGet("camera") = null
        {
            draw_text(1120,215,"Pirate Cove");
        }
        if htme_globalGet("camera") = 3
        {
            draw_text(1120,215,"Dining Area");
        }
        if htme_globalGet("camera") = 4
        {
            draw_text(1120,215,"Backstage");
        }
        if htme_globalGet("camera") = 5
        {
            draw_text(1120,215,"West Hall");
        }
        if htme_globalGet("camera") = 6
        {
            draw_text(1120,215,"East Hall");
        }
        if htme_globalGet("camera") = 7
        {
            draw_text(1120,215,"W. Hall Corner");
        }
        if htme_globalGet("camera") = 8
        {
            draw_text(1120,215,"E. Hall Corner");
        }
        if htme_globalGet("camera") = 9
        {
            draw_text(1120,215,"Kitchen");
        }
        if htme_globalGet("camera") = 10
        {
            draw_text(1120,215,"Supply Closet");
        }
        if htme_globalGet("camera") = 11
        {
            draw_text(1120,215,"Restrooms");
        }
    }
}