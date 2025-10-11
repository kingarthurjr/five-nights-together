/// @description Insert description here
// You can write your code in this editor

//Set animatronic to position
htme_globalSet(global.animatronicName,camNumber,buffer_s8);

//Interrupt if BB
if global.bbLocation != 0
{
    instance_destroy();
}

//Death Countdown
timer -= 1;

//If not enough time to close door
if htme_globalGet("mapSelected") = 0 //FNaF1
{
	if timer <= 40
	{
	    if obj_doorOffice.camNumber = 1
	    {
	        if htme_globalGet("doorLeft") = 0
	        {
	            htme_globalSet("tooLate",global.animatronicChosen,buffer_u8);
	        }
	    }
	    if obj_doorOffice.camNumber = 2
	    {
	        if htme_globalGet("doorRight") = 0
	        {
	            htme_globalSet("tooLate",global.animatronicChosen,buffer_u8);
	        }
	    }
	}
}

//Timer End
if timer <= 30
{
    if setAlarm = false
    {
        alarm[0] = 1;
        setAlarm = true;
    }
}