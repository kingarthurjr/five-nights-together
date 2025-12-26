//Flickering
instance_destroy(obj_office2_flickering);
instance_destroy(obj_office2_desk_flickering);
instance_create_layer(0,0,"DeskShadow",obj_office2_flickering_enter);
audio_play_sound(snd_stare,10,false,1,random_range(10,50)*room_speed);


//Who to Display
if htme_globalGet("tfreddy") = 1
{
	image_index = 0;
}
else if htme_globalGet("tbonnie") = 1
{
	image_index = 1;
}
else if htme_globalGet("tchica") = 1
{
	image_index = 2;
}
else if htme_globalGet("mangle") = 1
{
	image_index = 3;
}
else if htme_globalGet("wfreddy") = 1
{
	image_index = 4;
}
else if htme_globalGet("wbonnie") = 1
{
	image_index = 5;
}
else if htme_globalGet("wchica") = 1
{
	image_index = 6;
}
else if htme_globalGet("wfoxy") = 1
{
	image_index = 7;
}
else if htme_globalGet("puppet") = 1
{
	image_index = 8;
}
else if htme_globalGet("springtrap") = 1
{
	image_index = 9;
}
else if htme_globalGet("mimic") = 1
{
	image_index = 10;
}