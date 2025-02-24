/// @description Decrease Power

//If there is still power to take, take it.
if htme_globalGet("buildingPower") > 0
{
	htme_globalSet("buildingPower",htme_globalGet("buildingPower")-1,buffer_u8);
}

alarm[0] = powerDown; //Repeat that as soon as you need to.