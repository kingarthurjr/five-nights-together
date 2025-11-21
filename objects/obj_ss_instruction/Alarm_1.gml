/// @description Reset Sprites and Proceed

obj_ss_left.image_index = 0;
obj_ss_down.image_index = 0;
obj_ss_up.image_index = 0;
obj_ss_right.image_index = 0;

if obj_minigame_bonnie.ssRound > obj_minigame_bonnie.ssInstruction
{
    alarm[0] = 10;
    obj_minigame_bonnie.ssInstruction += 1;
}
else
{
    instance_destroy();
}