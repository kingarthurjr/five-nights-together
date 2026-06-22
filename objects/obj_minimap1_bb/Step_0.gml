//BB Location
bbRoom = null;
if htme_globalGet("bbLocation") > 0 and htme_globalGet("bbLocation") <= 9
{
	bbRoom = 3;
}
if htme_globalGet("bbLocation") = 10
{
	bbRoom = 4;
}
if htme_globalGet("bbLocation") >= 11 and htme_globalGet("bbLocation") <= 13
{
	bbRoom = 11;
}
if htme_globalGet("bbLocation") = 14
{
	bbRoom = 9;
}
if htme_globalGet("bbLocation") = 15
{
	bbRoom = 11;
}
if htme_globalGet("bbLocation") >= 16 and htme_globalGet("bbLocation") <= 18
{
	bbRoom = 7;
}
if htme_globalGet("bbLocation") >= 19 and htme_globalGet("bbLocation") <= 21
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