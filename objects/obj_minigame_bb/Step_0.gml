/// @description Balloon Count

if htme_globalGet("activePlayers") > 3
{
    if balloonCount = 3
    {
        instance_destroy();
    }
}
else
{
    if balloonCount = 2
    {
        instance_destroy();
    }
}