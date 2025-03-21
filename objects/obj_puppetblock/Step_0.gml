// Change the alpha based on direction
image_alpha += fade_speed * fade_direction;

// If we reach full opacity, start fading out
if (image_alpha >= 1) {
    image_alpha = 1;
    fade_direction = -1;
}

// If we reach full transparency, start fading in
if (image_alpha <= 0) {
    image_alpha = 0;
    fade_direction = 1;
}