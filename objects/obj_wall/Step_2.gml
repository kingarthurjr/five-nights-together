/*
fade = 0 (do nothing)
fade = 1 (fade out)
fade = 2 (fade in)
*/

if collision = true and image_alpha > 0.40
{
    fade = 1;
}
if collision = false and image_alpha < 1
{
    fade = 2;
}