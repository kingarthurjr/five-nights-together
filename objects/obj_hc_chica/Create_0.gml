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
    moveSpeed = choose(30,30,40,40);
}
else
{
    moveSpeed = choose(30,40,40,50,50,60,60);
}