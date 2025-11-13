/// @description Open or Closed?

depth = -y;

image_speed = 0;
if htme_globalGet("doorRight") = 1
{
	image_index = image_number-1;
	closed = 1
}
else
{
	image_index = 0;
	closed = 0;
}
audioStarted = false;