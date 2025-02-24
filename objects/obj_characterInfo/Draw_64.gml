/// @description Insert description here
// You can write your code in this editor

if current = 0
{
	cinfo = "";
}
if current = 1
{
	cinfo = "Freddy:  Activating his music box while the guard is watching will\ntrip the power!"
}
if current = 2
{
	cinfo = "Bonnie:  Disable cameras by completing a minigame before the\nguard notices!"
}
if current = 3
{
	cinfo = "Chica:  Battle the guard for control over the oven, potentially\noverheating the building and causing disastrous malfunctions."
}
if current = 4
{
	cinfo = "Foxy:  Hide from the guard long enough and run straight into the\noffice's nearest door!"
}
if current = 5
{
	cinfo = "The Puppet:  Choose to be invisible to the cameras, or to protect\nthe others by blocking all of the camera's functions."
}
if current = 6
{
	cinfo = "Springtrap:  Skip the Death Coin, and stubbornly wait by the\ndoors. Unless you should hear any nearby children."
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_fnaf20);
draw_set_colour(c_white);
draw_text(430,140,cinfo);