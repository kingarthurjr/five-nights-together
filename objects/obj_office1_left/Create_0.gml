//Set PurpleGuy Facing Sprite
htme_globalSet("facing",1,buffer_u8);

//Create Buttons
if !instance_exists(obj_arrow_right)
{
	instance_create(920,270,obj_arrow_right);
}

//Door Closed?
if htme_globalGet("doorLeft") = 1
{
	instance_change(obj_office1_left_closed,true);
}