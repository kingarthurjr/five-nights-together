with (obj_office2_flickering_enter)
{
	instance_change(obj_office2_flickering_fade,true);
}
instance_create_layer(0,0,"Animatronics",obj_office2_flickering);
instance_create_layer(0,0,"DeskShadow",obj_office2_desk_flickering);
audio_stop_sound(snd_stare);