// Inherit the parent event
event_inherited();

//Card Information
title = "KEEP AN EYE OUT";
icon = 2;

if htme_globalGet("mapSelected") = 0 //FNaF1
{
	description = "Keep an eye on Foxy wherever they may go.";
}
if htme_globalGet("mapSelected") = 1 //FNaF2
{
	description = "Keep a light on Foxy wherever they may go.";
}