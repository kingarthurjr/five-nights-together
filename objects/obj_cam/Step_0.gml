if htme_globalGet("cameraActive") and htme_globalGet("camera") = camNumber
{
	image_index = 1;
}
else if htme_globalGet("cam"+cam) = 1
{
	image_index = 2;
}
else
{
	image_index = 0
}