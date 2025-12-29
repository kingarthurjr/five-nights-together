//BB Location
bbRoom = null;
if global.bbLocation <= 9
{
	bbRoom = 3;
}
if global.bbLocation = 10
{
	bbRoom = 4;
}
if global.bbLocation >= 11 and global.bbLocation <= 13
{
	bbRoom = 11;
}
if global.bbLocation = 14
{
	bbRoom = 9;
}
if global.bbLocation = 15
{
	bbRoom = 11;
}
if global.bbLocation >= 16 or global.bbLocation <= 18
{
	bbRoom = 7;
}
if global.bbLocation >= 19 or global.bbLocation <= 21
{
	bbRoom = 8;
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