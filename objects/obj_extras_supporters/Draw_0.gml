draw_set_font(fnt_fnaf10);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var _y = y_start;

// Draw the header
draw_set_color(c_white);
draw_text(x_center, _y, "SUPPORTER CHADS");

// Add a little extra space below the header
_y += line_spacing + 15; 

// Draw the names
draw_set_color(color_gold);
for (var i = 0; i < array_length(supporters); i++) {
    draw_text(x_center, _y, supporters[i]);
    _y += line_spacing;
}

// Reset alignment and color so it doesn't mess up your other UI
draw_set_halign(fa_left);
draw_set_color(c_white);