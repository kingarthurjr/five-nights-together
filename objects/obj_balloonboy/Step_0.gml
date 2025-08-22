if htme_globalGet("bbLocation") = whichBB and global.animatronicChosen = 6
{
    image_alpha = 1;
}
else
{
    image_alpha = 0;
}

if facing = DOWN
{
    image_index = 0;
}
if facing = UP
{
    image_index = 1;
}
if facing = LEFT
{
    image_index = 2;
}
if facing = RIGHT
{
    image_index = 3;
}