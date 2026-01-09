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
if x <= 60
{
    whichWay = 0;
}
if x >= 710
{
    whichWay = 1;
}