// 1. Draw the button sprite (with its current scaled size)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.color,image_alpha);

// 2. Set up the text styling
draw_set_font(fnt_fnaf10);
draw_set_halign(fa_center); // Centers the text horizontally
draw_set_valign(fa_top);    // Aligns from the top of the letters

// 3. Calculate where the text goes 
// bbox_bottom is the bottom edge of the sprite's collision mask.
// Adding 5 gives it a nice 5-pixel gap below the scaling button.
var text_y = bbox_bottom + 5; 

// 4. Draw the text at the button's x center
// (Assuming your sprite's origin is centered)
draw_text(x, text_y, button_text);

// 5. Reset the text alignment (Good practice so it doesn't mess up other text in your game)
draw_set_halign(fa_left);
draw_set_valign(fa_top);