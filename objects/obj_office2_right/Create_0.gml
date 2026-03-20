//Set PurpleGuy Facing Sprite
htme_globalSet("facing",3,buffer_u8);

//Create Buttons
if !instance_exists(obj_arrow_left)
{
	instance_create(40,270,obj_arrow_left);
}
if !instance_exists(obj_button_mask)
{
	instance_create_layer(480,500,"Buttons",obj_button_mask);
}

//Foxy Special
if htme_globalGet("foxyRunning")
{
	if obj_time.part_spawn[3] and !instance_exists(obj_foxy_right)
	{
		instance_create_layer(0,0,"Buttons",obj_foxy_right);
	}
}