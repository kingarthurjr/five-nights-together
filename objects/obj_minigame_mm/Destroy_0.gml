global.time = 0;

global.playerobject.stopMoving = false;

//Destroy Minigame Components
instance_destroy(obj_minigame_fg);
instance_destroy(obj_minigame_border);
instance_destroy(obj_mm_afton);
instance_destroy(obj_mm_road);
//Destroy Obstacles
if instance_exists(obj_mm_car_lower)
{
    instance_destroy(obj_mm_car_lower)
}
if instance_exists(obj_mm_car_upper)
{
    instance_destroy(obj_mm_car_upper)
}
if instance_exists(obj_mm_david)
{
    instance_destroy(obj_mm_david)
}
if instance_exists(obj_mm_ball)
{
    instance_destroy(obj_mm_ball)
}
//Stop Music
if global.music = true
{
    if audio_is_playing(mus_motorist)
    {
        audio_stop_sound(mus_motorist);
    }
}