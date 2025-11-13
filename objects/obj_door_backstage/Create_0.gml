/// @description Open or Closed?

depth = -y;

image_speed = 0;
if htme_globalGet("freddy") = 4 or htme_globalGet("bonnie") = 4 or htme_globalGet("chica") = 4 or htme_globalGet("foxy") = 4 or htme_globalGet("puppet") = 4 or htme_globalGet("springtrap") = 4
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