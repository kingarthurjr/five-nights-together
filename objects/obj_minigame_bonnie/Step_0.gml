//Play out instructions
if ssRound != ssInstruction
{
    if !instance_exists(obj_ss_instruction)
    {
        instance_create(0,0,obj_ss_instruction);
    }
}
//If BREAK SIGNAL pressed
if htme_globalGet("breakBonnie") = 1
{
    instance_change(obj_ss_broken,true);
    htme_globalSet("breakBonnie",0,buffer_bool);
}

if gameover = true
{
    audio_play_sound(snd_interrupted,10,false);
    instance_destroy(obj_bonnie_hack);
    obj_special.bonnieCooldown = 5*room_speed;
    instance_destroy();
}

if htme_globalGet("activePlayers") > 3
{
    if ssRound = 5
    {
        audio_play_sound(snd_connected,10,false);
        obj_bonnie_hack.success = true;
        obj_special.bonnieCooldown = 5*room_speed;
        instance_destroy();
    }
}
else
{
    if ssRound = 3
    {
        audio_play_sound(snd_connected,10,false);
        obj_bonnie_hack.success = true;
        obj_special.bonnieCooldown = 5*room_speed;
        instance_destroy();
    }
}