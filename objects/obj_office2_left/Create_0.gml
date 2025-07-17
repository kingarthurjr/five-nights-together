//Set PurpleGuy Facing Sprite
htme_globalSet("facing",2,buffer_u8);

//Create Buttons
if !instance_exists(obj_arrow_right)
{
	instance_create(920,270,obj_arrow_right);
}
if !instance_exists(obj_button_mask)
{
	instance_create_layer(480,500,"Buttons",obj_button_mask);
}