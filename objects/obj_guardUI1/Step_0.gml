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