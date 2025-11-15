/// @description Open or Closed?

image_speed = 0;
if htme_globalGet("freddy") = 10 or htme_globalGet("bonnie") = 10 or htme_globalGet("chica") = 10 or htme_globalGet("foxy") = 10 or htme_globalGet("puppet") = 10 or htme_globalGet("springtrap") = 10
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

event_inherited();