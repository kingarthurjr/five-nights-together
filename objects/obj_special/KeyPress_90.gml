/// @description Special Abilities


if !instance_exists(obj_minigame_border) and !instance_exists(obj_doorfade)
{
	if freddyCondition
    {
        htme_globalSet("freddySpecial",1,buffer_bool);
        freddyCooldown = 30*room_speed;
        freddyReady = false;
    }
    if bonnieCondition
    {
        instance_create(0,0,obj_minigame_bonnie);
        instance_create(0,0,obj_bonnie_hack);
        bonnieCooldown = 5*room_speed;
        bonnieReady = false;
    }
    if chicaCondition
    {
        instance_create(0,0,obj_minigame_chica);
        ready = false;
        chicaReady = false;
    }
    if foxyCondition
    {
        instance_create(0,0,obj_foxy_run);
        foxyReady = false;
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
        htme_globalSet("foxyReady",maxCount,buffer_u16);
    }
    if puppetCondition
    {
        htme_globalSet("puppetSpecial",1,buffer_bool);
        audio_play_sound(snd_block,10,true);
        audio_sound_gain(snd_block,0.3,0);
        alarm[2] = 10*room_speed;
        puppetReady = false;
        htme_globalSet("puppetUsed",1,buffer_bool);
    }
}