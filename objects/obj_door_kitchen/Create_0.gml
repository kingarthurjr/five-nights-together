/// @description Open or Closed?

image_speed = 0;
if global.animatronicChosen < 2 or (htme_globalGet("chica") = 9 or htme_globalGet("foxy") = 9 or htme_globalGet("puppet") = 9 or htme_globalGet("springtrap") = 9)
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