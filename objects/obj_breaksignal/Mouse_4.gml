if !(htme_globalGet("camera") = htme_globalGet("puppet") and htme_globalGet("puppetSpecial") = 1)
{
	if (htme_globalGet("camera") = htme_globalGet("bonnie") or htme_globalGet("camera") = htme_globalGet("mimic")) and htme_globalGet("bonnieSpecial") = 1
	{
	    htme_globalSet("breakBonnie",1,buffer_bool);
	    audio_play_sound(snd_break,10,false);
	}
	else
	{
	    audio_play_sound(snd_breaknt,10,false);
	}
}
else
{
    audio_play_sound(snd_doorror,10,false);
}