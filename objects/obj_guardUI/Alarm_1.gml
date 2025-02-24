/// @description increase/Decrease Temperature

//Increase or Decrease Temperature Accordingly
if htme_globalGet("buildingTemp") < 110 or htme_globalGet("powerOut") = 1
{
    if goUp = 1
    {
        htme_globalSet("buildingTemp",htme_globalGet("buildingTemp")+1,buffer_u8);
    }
    else
    {
        if htme_globalGet("buildingTemp") > 60
        {
            htme_globalSet("buildingTemp",htme_globalGet("buildingTemp")-1,buffer_u8);
        }
    }
}

alarm[1] = heatUp; //Repeat that as soon as you need to.