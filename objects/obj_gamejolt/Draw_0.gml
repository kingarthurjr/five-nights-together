if room = rm_findmatch
{
	draw_set_font(fnt_fnaf10);
	draw_set_color(c_white);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(10,10,"Welcome, "+string(global.name)+"!");
}