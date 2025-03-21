if depth != -1
{
	depth = -1;
}

//Select Animation
if htme_globalGet("camera") = camNumber
{
	image_speed = 1;
}
else
{
	image_speed = 0;
	image_index = 0;
}