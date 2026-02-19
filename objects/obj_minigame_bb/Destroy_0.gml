//Unfreeze the Player
global.playerobject.stopMoving = false;
//
instance_destroy(obj_minigame_fg);
instance_destroy(obj_minigame_border);
instance_destroy(obj_bb_balloonboy);
instance_destroy(obj_bb_balloon);
instance_destroy(obj_bb_pizza);
instance_destroy(obj_bb_createItem);
instance_destroy(obj_bb_instructions);

audio_play_sound(snd_bb_laugh,10,false);

htme_globalSet("bbGame",0,buffer_bool);