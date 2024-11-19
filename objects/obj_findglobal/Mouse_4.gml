audio_play_sound(choose(snd_click1,snd_click2,snd_click3),10,false);
if obj_htme.use_udphp
{
    room_goto(rm_online_lobby);
}
else
{
    show_message("Create a mediation server and set htme_config>use_udphp = true");
}