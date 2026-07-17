draw_set_font(fnt_fnaf40);
draw_set_color(c_white);
draw_set_valign(fa_bottom);
draw_set_halign(fa_left);
draw_text(70*2,320*2,keyboard_string);

if string_length(keyboard_string) > 41 
{
	keyboard_string = string_copy(keyboard_string, 1, 41);
}