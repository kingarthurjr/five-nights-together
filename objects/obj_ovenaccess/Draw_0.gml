draw_self();
draw_set_font(fnt_fnaf12);
draw_set_colour(c_white)
draw_set_halign(fa_right);
if htme_globalGet("ovenTemp") <= 160
{
    draw_text(170,255,"OFF");
}
else
{
    draw_text(165,255,htme_globalGet("ovenTemp"));
}