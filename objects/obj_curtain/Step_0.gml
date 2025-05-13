/// @description Fade

/*
fade = 0 (do nothing)
fade = 1 (fade out)
fade = 2 (fade in)
*/

if fade = 1
{
    if image_alpha > 0
    {
        image_alpha -= .20;
    }
    else
    {
        fade = 0;
    }
}
if fade = 2
{
    if image_alpha < 1
    {
        image_alpha += .20;
    }
    else
    {
        fade = 0;
    }
}