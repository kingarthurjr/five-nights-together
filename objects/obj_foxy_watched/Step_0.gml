if htme_globalGet("activePlayers") = 2
{
    maxCount = 15*room_speed;
}
if htme_globalGet("activePlayers") = 3
{
    maxCount = 20*room_speed;
}
if htme_globalGet("activePlayers") >= 4
{
    maxCount = 30*room_speed;
}

if instance_exists(obj_special)
{
    if htme_globalGet("foxyWatched") = 1
    {
        if htme_globalGet("foxyReady") < maxCount
        {
            htme_globalSet("foxyReady",htme_globalGet("foxyReady")+4,buffer_u16);
            obj_special.foxyReady = false;
        }
    }
    if htme_globalGet("foxyWatched") = 0
    {
        if htme_globalGet("foxyReady") = 0
        {
            obj_special.foxyReady = true;
        }
        else
        {
            htme_globalSet("foxyReady",htme_globalGet("foxyReady")-1,buffer_u16);
        } 
    }
}