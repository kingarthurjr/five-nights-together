if obj_minigame_bonnie.ssRound = obj_minigame_bonnie.ssInstruction
{
    image_index = 0;
    buttonIsPushed = 0;
    
    if obj_minigame_bonnie.note[obj_minigame_bonnie.ssCurrentNote] = 4
    {
        obj_minigame_bonnie.ssCurrentNote += 1;
        
        if obj_minigame_bonnie.ssCurrentNote > obj_minigame_bonnie.ssRound //If done with round, reset and move on
        {
            obj_minigame_bonnie.ssRound += 1;
            obj_minigame_bonnie.ssInstruction = 0;
            obj_minigame_bonnie.ssCurrentNote = 1;
            obj_ss_instruction.alarm[0] = 1*room_speed;
        }
    }
    else
    {
        obj_minigame_bonnie.gameover = true;
    }
}