/// @description Stop the Puppet

audio_stop_sound(snd_block);
htme_globalSet("puppetSpecial",0,buffer_bool);
puppetCooldown = 30*room_speed;