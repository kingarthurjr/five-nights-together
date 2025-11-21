/// @description Show Note Order

if obj_minigame_bonnie.ssRound != obj_minigame_bonnie.ssInstruction
{
    if obj_minigame_bonnie.note[obj_minigame_bonnie.ssInstruction + 1] = 1
    {
        obj_ss_left.image_index = 1;
        audio_play_sound(snd_left,10,false);
    }
    if obj_minigame_bonnie.note[obj_minigame_bonnie.ssInstruction + 1] = 2
    {
        obj_ss_down.image_index = 1;
        audio_play_sound(snd_down,10,false);
    }
    if obj_minigame_bonnie.note[obj_minigame_bonnie.ssInstruction + 1] = 3
    {
        obj_ss_up.image_index = 1;
        audio_play_sound(snd_up,10,false);
    }
    if obj_minigame_bonnie.note[obj_minigame_bonnie.ssInstruction + 1] = 4
    {
        obj_ss_right.image_index = 1;
        audio_play_sound(snd_right,10,false);
    }
        alarm[1] = 10;
}