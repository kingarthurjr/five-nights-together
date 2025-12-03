global.atDoor = false;
with (obj_doorOffice)
{
	if collision = true
	{
	    global.atDoor = true;
	}
}
obj_stat.newCam = camNumber;