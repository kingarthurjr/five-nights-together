/// @description Raise Temperature

currentTemp = htme_globalGet("ovenTemp");
htme_globalSet("chicaOven",1,buffer_bool);
if y <= 141
{
    instance_create(0,0,obj_ovenincrease);
    if htme_globalGet("ovenTemp") >= 550
    {
        obj_ovenincrease.amount = "MAX"
    }
    else
    {
        if x <= 399
        {
            htme_globalSet("ovenTemp",currentTemp+200,buffer_u16);
            obj_ovenincrease.amount = 200;
        }
        if x >= 400 and x <= 578
        {
            htme_globalSet("ovenTemp",currentTemp+150,buffer_u16);
            obj_ovenincrease.amount = 150;
        }
        if x >= 579 and x <= 762
        {
            htme_globalSet("ovenTemp",currentTemp+100,buffer_u16);
            obj_ovenincrease.amount = 100;
        }
        if x >= 763 and x <= 909
        {
            htme_globalSet("ovenTemp",currentTemp+50,buffer_u16);
            obj_ovenincrease.amount = 50;
        }
        if x >= 910 and x <= 1020
        {
            htme_globalSet("ovenTemp",currentTemp+350,buffer_u16);
            obj_ovenincrease.amount = 350;
        }
        if x >= 1021 and x <= 1159
        {
            htme_globalSet("ovenTemp",currentTemp+50,buffer_u16);
            obj_ovenincrease.amount = 50;
        }
        if x >= 1160 and x <= 1344
        {
            htme_globalSet("ovenTemp",currentTemp+100,buffer_u16);
            obj_ovenincrease.amount = 100;
        }
        if x >= 1345 and x <= 1528
        {
            htme_globalSet("ovenTemp",currentTemp+150,buffer_u16);
            obj_ovenincrease.amount = 150;
        }
        if x >= 1529 and x <= 1695
        {
            htme_globalSet("ovenTemp",currentTemp+200,buffer_u16);
            obj_ovenincrease.amount = 200;
        }
    }
    if htme_globalGet("ovenTemp") > 550
    {
        htme_globalSet("ovenTemp",550);
    }
    instance_destroy(obj_minigame_chica);
}