//BB Location
bbRoom = null;
if global.bbLocation = 1
{
	bbRoom = 0;
}
if global.bbLocation >= 2 and global.bbLocation <= 7
{
	bbRoom = 6;
}
if global.bbLocation = 8
{
	bbRoom = 7;
}
if global.bbLocation >= 9 and global.bbLocation <= 11
{
	bbRoom = 8;
}
if global.bbLocation = 12 or global.bbLocation = 13
{
	bbRoom = 9;
}
if global.bbLocation = 14
{
	bbRoom = 10;
}
if global.bbLocation = 15
{
	bbRoom = 11;
}
if global.bbLocation = 16
{
	bbRoom = 12;
}
if global.bbLocation = 17
{
	bbRoom = 13;
}
image_index = bbRoom+1;

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