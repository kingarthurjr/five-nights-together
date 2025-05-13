//Defaults
depth = -99994;
gameover = false;
gameround = 0;
randomize();
suit = irandom_range(0,2);

//Create Minigame Components
instance_create(0,0,obj_minigame_fg);
instance_create(0,0,obj_minigame_border);
instance_create(80,80,obj_pots_instructions);
instance_create(460,120,obj_pots_afton);
//Round 1
var suit_options = [obj_pots_bonnie_head,obj_pots_elephant_head,obj_pots_jester_head];
for (var i = array_length(suit_options) - 1; i > 0; i--)
{
    var j = irandom(i);
    var temp = suit_options[i];
    suit_options[i] = suit_options[j];
    suit_options[j] = temp;
}
instance_create(240,420,suit_options[0]);
instance_create(460,420,suit_options[1]);
instance_create(680,420,suit_options[2]);

//Stop the Player
obj_player.stopMoving = true;

//Music
if global.music = true
{
	audio_play_sound(mus_springlock,10,true,.1,choose(0,11));
}