/// @description Usage Meter

//Power Items
usageTotal = 1; //Fan
usage[1] = htme_globalGet("doorLeft");
usage[2] = htme_globalGet("doorRight");
usage[3] = htme_globalGet("light");
usage[4] = htme_globalGet("cameraActive");

//Count Active Items
if htme_globalGet("powerOut") = 0
{
	for(var i = 1;i<=4;i++)
	{
		if usage[i] = 1
		{
			usageTotal += 1;
		}
	}
}
else //Power Outage
{
	usageTotal = 0;
}
image_index = usageTotal;