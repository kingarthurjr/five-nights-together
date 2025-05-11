///Default Variables
depth = -99998;
step = 0;
spd = 20; //speed to move at, so it's easier to change speed if necessary
up = false;
down = false;
global.time = 0;

//Ruinborn Afton FUN Event
randomize();
ruinborn = irandom_range(1,100);
if ruinborn <= 2
{
    sprite_index = spr_dltl_ruinbornafton;
    audio_play_sound(snd_ruinborn,10,false);
}