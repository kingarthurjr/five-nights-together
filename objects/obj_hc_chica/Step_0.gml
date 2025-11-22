/// @description Movement

if whichWay = 0
{
    if ((global.time % 2) = 0)
    {
        x += moveSpeed;
        audio_play_sound(snd_run,10,false);        
    }
    
}
if whichWay = 1
{
    if ((global.time % 2) = 0)
    {
        x -= moveSpeed;
        audio_play_sound(snd_run,10,false);
    }
}
if x <= 120
{
    whichWay = 0;
}
if x >= 1420
{
    whichWay = 1;
}