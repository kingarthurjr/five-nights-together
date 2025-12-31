global.playerobject.stopMoving = false;

//Destroy Minigame Components
instance_destroy(obj_minigame_fg);
instance_destroy(obj_minigame_border);
instance_destroy(obj_pots_instructions);
instance_destroy(obj_pots_afton);
//Destroy Suits
if instance_exists(obj_pots_bonnie_head)
{
    instance_destroy(obj_pots_bonnie_head)
}
if instance_exists(obj_pots_elephant_head)
{
    instance_destroy(obj_pots_elephant_head)
}
if instance_exists(obj_pots_jester_head)
{
    instance_destroy(obj_pots_jester_head)
}
if instance_exists(obj_pots_bonnie_torso)
{
    instance_destroy(obj_pots_bonnie_torso)
}
if instance_exists(obj_pots_elephant_torso)
{
    instance_destroy(obj_pots_elephant_torso)
}
if instance_exists(obj_pots_jester_torso)
{
    instance_destroy(obj_pots_jester_torso)
}
if instance_exists(obj_pots_bonnie_legs)
{
    instance_destroy(obj_pots_bonnie_legs)
}
if instance_exists(obj_pots_elephant_legs)
{
    instance_destroy(obj_pots_elephant_legs)
}
if instance_exists(obj_pots_jester_legs)
{
    instance_destroy(obj_pots_jester_legs)
}
//Stop Music
if global.music = true
{
    if audio_is_playing(mus_springlock)
    {
        audio_stop_sound(mus_springlock);
    }
}