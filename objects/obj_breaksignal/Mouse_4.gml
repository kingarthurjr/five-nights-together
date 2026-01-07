//Which Bonnie?
currentBonnie = 0;
if htme_globalGet("bonnieTaken") != "noone"
{
	currentBonnie = htme_globalGet("bonnie");
}
if htme_globalGet("tbonnieTaken") != "noone"
{
	currentBonnie = htme_globalGet("tbonnie");
}
if htme_globalGet("wbonnieTaken") != "noone"
{
	currentBonnie = htme_globalGet("wbonnie");
}
if htme_globalGet("mimicTaken") != "noone"
{
	currentBonnie = htme_globalGet("mimic");
}

if !(htme_globalGet("camera") = htme_globalGet("puppet") and htme_globalGet("puppetSpecial") = 1)
{
	if (htme_globalGet("camera") = currentBonnie and htme_globalGet("bonnieSpecial") = 1)
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