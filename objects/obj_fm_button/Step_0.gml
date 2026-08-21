// 1. Check if the mouse is hovering over the button
if (position_meeting(mouse_x, mouse_y, id))
{
    target_scale = hover_scale;
}
else
{
    target_scale = base_scale;
}

// 2. Smoothly transition the current scale to the target scale
image_xscale = lerp(image_xscale, target_scale, lerp_speed);
image_yscale = image_xscale; // Keep it perfectly proportional