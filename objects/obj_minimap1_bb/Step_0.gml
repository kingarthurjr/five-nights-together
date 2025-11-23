image_index = global.bbRoom;

if image_alpha >= 1
{
    fade = 0; //Fade Out
}
if image_alpha <= 0
{
    fade = 1; //Fade In
}

//Animate Alpha
if fade = 0
{
    image_alpha -= .1;
}
if fade = 1
{
    image_alpha += .1;
}