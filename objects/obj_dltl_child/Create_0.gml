//Defaults
depth = -99997;
randomize();
spd = random_range(20,40);
reverse = false;

//FUN Events
surftrap = irandom_range(1,100);
if surftrap = 1
{
    sprite_index = spr_dltl_surftrap;
    audio_play_sound(snd_surfsup,10,false);
}
if surftrap = 2
{
    sprite_index = spr_dltl_flipsidefreddy;
    audio_play_sound(snd_hesflippinback,10,false);
}