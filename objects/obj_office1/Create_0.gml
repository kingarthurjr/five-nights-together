htme_globalSet("facing",0,buffer_u8);

//Create Buttons
if !instance_exists(obj_handunit)
{
	instance_create_layer(40,270,"Buttons",obj_arrow_left);
	instance_create_layer(920,270,"Buttons",obj_arrow_right);
	instance_create_layer(680,500,"Buttons",obj_button_handunit);
	instance_create_layer(360,500,"Buttons",obj_button_camera);
}
//Office Flickering
if !instance_exists(obj_office1_flickering)
{
    instance_create_layer(0,0,"Animatronics",obj_office1_flickering);
}
//Sounds
if audio_is_playing(snd_powerout)
{
	audio_stop_sound(snd_powerout);
}
if audio_is_playing(snd_outage)
{
	audio_stop_sound(snd_outage);
}