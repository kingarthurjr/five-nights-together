draw_set_font(fnt_fnaf8);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var _y = y_start;

// --- 1. DRAW TOP ROW ---
draw_set_color(c_red);
draw_text(x_left, _y, top_left.header);
draw_text(x_right, _y, top_right.header);

_y += line_spacing;
draw_set_color(c_white);
for (var i = 0; i < array_length(top_left.names); i++) draw_text(x_left, _y + (i * line_spacing), top_left.names[i]);
for (var i = 0; i < array_length(top_right.names); i++) draw_text(x_right, _y + (i * line_spacing), top_right.names[i]);

var _top_max = max(array_length(top_left.names), array_length(top_right.names));
_y += (_top_max * line_spacing) + (section_spacing / 2);

// --- 2. DRAW MIDDLE INLINE (Two colors on one line) ---
var _mid_w = string_width(mid_center.header) + string_width(mid_center.name);
var _mid_x = x_center - (_mid_w / 2);

draw_set_halign(fa_left); // Switch to left alignment temporarily to stitch text
draw_set_color(c_red);
draw_text(_mid_x, _y, mid_center.header);
draw_set_color(c_white);
draw_text(_mid_x + string_width(mid_center.header), _y, mid_center.name);
draw_set_halign(fa_center); // Restore center alignment

_y += section_spacing;

// --- 3. DRAW MAIN COLUMNS ---
var _y_left = _y;
var _y_right = _y;

// Left Column Loop
for (var i = 0; i < array_length(left_column); i++) {
    var _sec = left_column[i];
    draw_set_color(c_red);
    draw_text(x_left, _y_left, _sec.header);
    _y_left += line_spacing;

    draw_set_color(c_white);
    for (var j = 0; j < array_length(_sec.names); j++) {
        draw_text(x_left, _y_left, _sec.names[j]);
        _y_left += line_spacing;
    }
    _y_left += section_spacing;
}

// Right Column Loop
for (var i = 0; i < array_length(right_column); i++) {
    var _sec = right_column[i];
    draw_set_color(c_red);
    draw_text(x_right, _y_right, _sec.header);
    _y_right += line_spacing;

    draw_set_color(c_white);
    for (var j = 0; j < array_length(_sec.names); j++) {
        draw_text(x_right, _y_right, _sec.names[j]);
        _y_right += line_spacing;
    }
    _y_right += section_spacing;
}

// --- 4. DRAW BOTTOM INLINE ---
// Start below whichever column ended up being the longest!
_y = max(_y_left, _y_right); 

var _bot_w = string_width(bottom_center.header) + string_width(bottom_center.name);
var _bot_x = x_center - (_bot_w / 2);

draw_set_halign(fa_left);
draw_set_color(c_red);
draw_text(_bot_x, _y, bottom_center.header);
draw_set_color(c_white);
draw_text(_bot_x + string_width(bottom_center.header), _y, bottom_center.name);

// Reset default draw settings
draw_set_halign(fa_left); 
draw_set_color(c_white);