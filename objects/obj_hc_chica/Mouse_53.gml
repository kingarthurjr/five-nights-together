/// @description Throw Dough but Mobile

if cooldown = 1
{
    whichWay = 2;
    sprite_index = spr_cook_chica_throw;
    instance_create(x+40,y+20,obj_dough);
    audio_play_sound(snd_scare,10,false);
}