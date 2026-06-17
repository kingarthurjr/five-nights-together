/// @description Jumpscare

htme_globalSet("jumpscare",1,buffer_bool);
htme_globalSet("whoGot",global.animatronicChosen,buffer_u8);
room_goto(rm_gameover);