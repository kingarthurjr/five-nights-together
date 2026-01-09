/// @description Raise Temperature

currentTemp = htme_globalGet("ovenTemp");
htme_globalSet("ovenUse",1,buffer_bool);
if y <= 70
{
    instance_create(0,0,obj_ovenincrease);
    if htme_globalGet("ovenTemp") >= 550
    {
        obj_ovenincrease.amount = "MAX"
    }
    else
    {
        if x <= 199
        {
            htme_globalSet("ovenTemp",currentTemp+200,buffer_u16);
            obj_ovenincrease.amount = 200;
        }
        if x >= 200 and x <= 289
        {
            htme_globalSet("ovenTemp",currentTemp+150,buffer_u16);
            obj_ovenincrease.amount = 150;
        }
        if x >= 290 and x <= 381
        {
            htme_globalSet("ovenTemp",currentTemp+100,buffer_u16);
            obj_ovenincrease.amount = 100;
        }
        if x >= 382 and x <= 454
        {
            htme_globalSet("ovenTemp",currentTemp+50,buffer_u16);
            obj_ovenincrease.amount = 50;
        }
        if x >= 455 and x <= 510
        {
            htme_globalSet("ovenTemp",currentTemp+350,buffer_u16);
            obj_ovenincrease.amount = 350;
        }
        if x >= 511 and x <= 579
        {
            htme_globalSet("ovenTemp",currentTemp+50,buffer_u16);
            obj_ovenincrease.amount = 50;
        }
        if x >= 580 and x <= 672
        {
            htme_globalSet("ovenTemp",currentTemp+100,buffer_u16);
            obj_ovenincrease.amount = 100;
        }
        if x >= 673 and x <= 764
        {
            htme_globalSet("ovenTemp",currentTemp+150,buffer_u16);
            obj_ovenincrease.amount = 150;
        }
        if x >= 765 and x <= 847
        {
            htme_globalSet("ovenTemp",currentTemp+200,buffer_u16);
            obj_ovenincrease.amount = 200;
        }
    }
    if htme_globalGet("ovenTemp") > 550
    {
        htme_globalSet("ovenTemp",550,buffer_u16);
    }
    instance_destroy(obj_minigame_chica);
}