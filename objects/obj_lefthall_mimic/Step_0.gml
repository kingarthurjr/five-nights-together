if htme_globalGet("mimic") = 5
{
	image_index = (htme_globalGet("bonnieSpecial")) ? 3 : (htme_globalGet("freddySpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}