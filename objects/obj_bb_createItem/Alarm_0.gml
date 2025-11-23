randomize();
chance = irandom_range(1,5);

if (chance = 1 or obj_minigame_bb.balloonNow = 1) and !instance_exists(obj_bb_balloon)
{
    obj_minigame_bb.balloonNow = 0;
    instance_create(x,y,obj_bb_balloon);
}
else
{
    if instance_number(obj_bb_pizza) < 3
    {
        instance_create(x,y,obj_bb_pizza);
    }
}

alarm[0] = irandom_range(90,150);