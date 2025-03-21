if !instance_exists(obj_puppetblock)
{
    image_index = choose(0,1);
    image_alpha = random_range(0.1,0.5);
    audio_sound_gain(mus_puppet,image_alpha,0);
}
alarm[1] = 4;