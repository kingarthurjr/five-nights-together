depth = -99998;
//Defaults
whichWay = 0;
global.time = 0;
cooldown = 0;
alarm[0] = 1*room_speed;

//Randomized Speed
randomize();
if htme_globalGet("activePlayers") < 4
{
    moveSpeed = choose(70,70,80,90);
}
else
{
    moveSpeed = choose(70,80,80,90,90,100,100);
}