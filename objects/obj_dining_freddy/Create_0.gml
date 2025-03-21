if htme_globalGet("freddy") = 3
{
	image_index = (htme_globalGet("freddySpecial")) ? 2 : 1;
}
else
{
	image_index = 0;
}
current = image_index;
depth = -5;