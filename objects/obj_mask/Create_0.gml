htme_globalSet("mask",htme_globalGet("facing"),buffer_u8);
instance_create(0,0,obj_office2_mask_flickering);
audio_play_sound(snd_mask,10,true);
alarm[0] = 10;