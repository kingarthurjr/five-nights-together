//Set PurpleGuy Facing Sprite
htme_globalSet("facing",2,buffer_u8);

//Create Buttons
if !instance_exists(obj_arrow_left)
{
	instance_create(40,270,obj_arrow_left);
}

//Door Closed?
if htme_globalGet("doorRight") = 1
{
	instance_change(obj_office1_right_closed,true);
}