htme_globalSet("facing",0,buffer_u8);
htme_globalSet("powerOut",1,buffer_bool);

//Outage Sounds
audio_stop_all();
audio_play_sound(snd_powerout,10,false);
audio_play_sound(snd_outage,10,true);

//Create Buttons
if !instance_exists(obj_handunit) and !instance_exists(obj_handunit_flip)
{
    if !instance_exists(obj_button_handunit)
    {
        instance_create_layer(680,500,"Buttons",obj_button_handunit);
    }
}

//Open Doors
if htme_globalGet("doorLeft") = 1
{
    htme_globalSet("doorLeft",0,buffer_bool);
    audio_play_sound(snd_door,10,false);
}
if htme_globalGet("doorRight") = 1
{
    htme_globalSet("doorRight",0,buffer_bool);
    audio_play_sound(snd_door,10,false);
}
if audio_is_playing(snd_blow)
{
    audio_stop_sound(snd_blow);
    audio_play_sound(snd_ACoff,10,false);
}