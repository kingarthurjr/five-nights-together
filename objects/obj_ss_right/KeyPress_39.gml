if obj_minigame_bonnie.ssRound = obj_minigame_bonnie.ssInstruction
{
    image_index = 1;
    if buttonIsPushed = 0
    {
        audio_play_sound(snd_right,10,false);
        buttonIsPushed = 1;
    }
}