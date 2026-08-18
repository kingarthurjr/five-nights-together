draw_self();
draw_set_font(fnt_fnaf20);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(color);
if (selected)
{
	draw_text(x+312,y,"<Press Any Key or ESC>");
}
else
{
	draw_text(x+312,y,scr_key_to_string(current_val));
}