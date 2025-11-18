/// @description Cheat Check Pt2

//Check Current Foxy
if global.animatronicChosen = 4
{
	activeFoxy = htme_globalGet("foxy");
}
if global.animatronicChosen = 7
{
	activeFoxy = htme_globalGet("mimic");
}
if global.animatronicChosen = 11
{
	activeFoxy = htme_globalGet("mangle");
}
if global.animatronicChosen = 15
{
	activeFoxy = htme_globalGet("wfoxy");
}

//Detect Cheating
if currentCam != activeFoxy //If camera has changed
{
    cheating += 1;
    alarm[1] = 60;
        
    if cheating > 4 //If camera has changed too much
    {
        if htme_globalGet("foxyReady")+90 >= 900
        {
            htme_globalSet("foxyReady",900,buffer_u16);
        }
        else
        {
            htme_globalSet("foxyReady",+90,buffer_u16);
        }
        instance_create(0,0,obj_foxyincrease);
        obj_foxyincrease.amount = 3;
    }
}   