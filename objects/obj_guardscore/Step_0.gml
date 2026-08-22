if scoreDisplay < htme_globalGet("guardScore")
{
	scoreDisplay += (htme_globalGet("guardScore")/(5*room_speed));
}