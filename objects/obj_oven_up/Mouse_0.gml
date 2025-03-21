if htme_globalGet("ovenTemp") < 550
{
    htme_globalSet("ovenTemp",htme_globalGet("ovenTemp")+10,buffer_u8);
    htme_globalSet("ovenUse",0,buffer_u8);
    audio_play_sound(snd_ovenclick,10,false);
}