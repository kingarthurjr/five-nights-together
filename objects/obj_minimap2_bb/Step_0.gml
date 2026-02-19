//BB Location
bbRoom = null;
if htme_globalGet("bbLocation") = 1
{
	bbRoom = 0;
}
if htme_globalGet("bbLocation") = 6
{
	bbRoom = 5;
}
if (htme_globalGet("bbLocation") >= 2 and htme_globalGet("bbLocation") <= 5) or htme_globalGet("bbLocation") = 7
{
	bbRoom = 6;
}
if htme_globalGet("bbLocation") = 8
{
	bbRoom = 7;
}
if htme_globalGet("bbLocation") >= 9 and htme_globalGet("bbLocation") <= 11
{
	bbRoom = 8;
}
if htme_globalGet("bbLocation") = 12 or htme_globalGet("bbLocation") = 13
{
	bbRoom = 9;
}
if htme_globalGet("bbLocation") = 14
{
	bbRoom = 10;
}
if htme_globalGet("bbLocation") = 15
{
	bbRoom = 11;
}
if htme_globalGet("bbLocation") = 16
{
	bbRoom = 12;
}
if htme_globalGet("bbLocation") = 17
{
	bbRoom = 13;
}
image_index = bbRoom;

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