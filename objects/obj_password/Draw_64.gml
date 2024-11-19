draw_set_font(fnt_fnaf20);
draw_set_color(c_white);
draw_set_valign(fa_bottom);
draw_set_halign(fa_left);
draw_text(70,320,keyboard_string);

if string_length(keyboard_string) > 41 
{
	keyboard_string = string_copy(keyboard_string, 1, 41);
}