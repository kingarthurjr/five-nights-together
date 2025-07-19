x = global.camMoveX;

//Who to Display
image_index = 0;
if htme_globalGet("springtrap") = 7
{
	image_index = 7;
}
else if htme_globalGet("bonnie") = 7
{
	image_index = (htme_globalGet("bonnieSpecial") = 1) ? 4 : 3;
}
else if htme_globalGet("foxy") = 7
{
	image_index = 6;
}
else if htme_globalGet("freddy") = 7
{
	image_index = (htme_globalGet("freddySpecial") = 1) ? 2 : 1;
}
else if htme_globalGet("chica") = 7
{
	image_index = 5;
}
else if htme_globalGet("mimic") = 7
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 10 : ((htme_globalGet("freddySpecial")) ? 9 : 8);
}
current = image_index;