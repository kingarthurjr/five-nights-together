htme_globalSet("facing",1,buffer_u8);
instance_create_layer(0,0,"Desk",obj_office2_desk);
inOffice = 0;

//Create Buttons
if !instance_exists(obj_handunit)
{
	instance_create_layer(40,270,"Buttons",obj_arrow_left);
	instance_create_layer(920,270,"Buttons",obj_arrow_right);
	instance_create_layer(680,500,"Buttons",obj_button_handunit);
	instance_create_layer(360,500,"Buttons",obj_button_camera);
	instance_create_layer(480,500,"Buttons",obj_button_mask);
}
//Office Flickering
if !instance_exists(obj_office2_flickering)
{
    instance_create_layer(0,0,"Animatronics",obj_office2_flickering);
}
//Sounds
if !audio_is_playing(snd_office2)
{
	audio_play_sound(snd_office2,10,true);
}
if audio_is_playing(snd_powerout)
{
	audio_stop_sound(snd_powerout);
}
if audio_is_playing(snd_outage)
{
	audio_stop_sound(snd_outage);
}

//Nose Honks
instance_create_layer(370,189,"Buttons",obj_honk_freddy);
instance_create_layer(213,397,"Buttons",obj_honk_helpy);