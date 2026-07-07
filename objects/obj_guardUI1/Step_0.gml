///Usage Meter - - - - -

//Power Items
usageTotal = 1; //Fan
usage[1] = htme_globalGet("doorLeft");
usage[2] = htme_globalGet("doorRight");
usage[3] = htme_globalGet("light");
usage[4] = htme_globalGet("cameraActive");
powerDown = 147;
//Count Active Items
if htme_globalGet("powerOut") = 0
{
	for(var i = 1;i<=4;i++)
	{
		if usage[i] = 1
		{
			usageTotal += 1;
			powerDown -= 39;
		}
	}
	if htme_globalGet("buildingTemp") >= 110 //Overheated
	{
		if !audio_is_playing(snd_blow)
		{
			audio_play_sound(snd_blow,10,true);
		}
		usageTotal = 4;
		powerDown = 30;
		for(var i = 1;i<=3;i++)
		{
			if usage[i] = 1
			{
				usageTotal = 5;
				powerDown = 10;
				break;
			}
		}
	}
}
else //Power Outage
{
	usageTotal = 0;
}
image_index = usageTotal;

///Decide Temperature Increase - - - - -

//Decrease Temperture if oven is OFF
if htme_globalGet("ovenTemp") <= 160
{
    heatUp = 30;
    goUp = 0;
}
//Increase Temperature Speed
if htme_globalGet("ovenTemp") >= 170 and htme_globalGet("ovenTemp") < 255
{
    heatUp = 80;
    goUp = 1;
}
if htme_globalGet("ovenTemp") >= 255 and htme_globalGet("ovenTemp") < 350
{
    heatUp = 60;
    goUp = 1;
}
if htme_globalGet("ovenTemp") >= 350 and htme_globalGet("ovenTemp") < 445
{
    heatUp = 40;
    goUp = 1;
}
if htme_globalGet("ovenTemp") >= 445 and htme_globalGet("ovenTemp") <= 550
{
    heatUp = 30;
    goUp = 1;
}

if htme_globalGet("foxyRunning") = 1
{
    if !audio_is_playing(snd_sprint)
    {
        audio_play_sound(snd_sprint,10,false);
    }
    htme_globalSet("foxyRunning",0,buffer_bool);
}

//Kitchen Sounds
if htme_globalGet("chica") = 9 or htme_globalGet("mimic") = 9
{
	if !audio_is_playing(snd_kitchen)
	{
		audio_play_sound(snd_kitchen,10,true);
	}
	if htme_globalGet("cameraActive") and htme_globalGet("camera") = 9
	{
		audio_sound_gain(snd_kitchen,1,0);
	}
	else
	{
		audio_sound_gain(snd_kitchen,.1,0);
	}
}
else
{
	if audio_is_playing(snd_kitchen)
	{
		audio_stop_sound(snd_kitchen);
	}
}
if htme_globalGet("foxy") = 9
{
	if !audio_is_playing(snd_dum)
	{
		audio_play_sound(snd_dum,10,true);
	}
	if htme_globalGet("cameraActive") and htme_globalGet("camera") = 9
	{
		audio_sound_gain(snd_dum,.5,0);
	}
	else
	{
		audio_sound_gain(snd_dum,.02,0);
	}
}
else
{
	if audio_is_playing(snd_dum)
	{
		audio_stop_sound(snd_dum);
	}
}
if htme_globalGet("springtrap") = 9
{
	if !audio_is_playing(snd_cooktrap)
	{
		audio_play_sound(snd_cooktrap,10,true);
	}
	if htme_globalGet("cameraActive") and htme_globalGet("camera") = 9
	{
		audio_sound_gain(snd_cooktrap,.2,0);
	}
	else
	{
		audio_sound_gain(snd_cooktrap,.01,0);
	}
}
else
{
	if audio_is_playing(snd_cooktrap)
	{
		audio_stop_sound(snd_cooktrap);
	}
}