///Usage Meter - - - - -

//Power Items
usageTotal = 1; //Fan
usage[1] = htme_globalGet("light");
usage[2] = htme_globalGet("cameraActive");
powerDown = 150;
//Count Active Items
if htme_globalGet("powerOut") = 0
{
	for(var i = 1;i<=2;i++)
	{
		if usage[i] = 1
		{
			usageTotal += 1;
			powerDown -= 30;
		}
	}
	if htme_globalGet("buildingTemp") >= 110 //Overheated
	{
		ini_open("settings.ini");
		if ini_read_real("Game","Chica",0) = 0
		{
			instance_create(0,0,obj_i_chica);
		}
		ini_close();
		if !audio_is_playing(snd_blow)
		{
			audio_play_sound(snd_blow,10,true);
		}
		usageTotal = 3;
		powerDown = 90;
		for(var i = 1;i<=3;i++)
		{
			if usage[i] = 1
			{
				usageTotal = 4;
				powerDown = 30;
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

//Sounds
if htme_globalGet("springtrapMove") = 1
{
	if !audio_is_playing(snd_groan)
	{
		audio_play_sound(snd_groan,10,false);
	}
	htme_globalSet("springtrapMove",0,buffer_bool);
}
if audio_is_playing(snd_groan)
{
	if htme_globalGet("cameraActive") = 1 and htme_globalGet("camera") = htme_globalGet("springtrap")
	{
		audio_sound_gain(snd_groan,.3,0);
	}
	else
	{
		audio_sound_gain(snd_groan,.1,0);
	}
}
if htme_globalGet("ventLeave") = 1
{
	audio_play_sound(snd_ventleave,10,false);
	htme_globalSet("ventLeave",0,buffer_bool);
}