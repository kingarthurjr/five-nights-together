if done = false
{
    if image_alpha > 0
    {
        image_alpha -= .03;
    }
    if image_alpha <= 0
    {
        if image_index < 2
        {
            audio_play_sound(snd_blip,10,false);
            image_index += 1;
            image_alpha = 1;
        }
        if image_index = 2
        {
			alarm[0] = 30;
        }
    }
}