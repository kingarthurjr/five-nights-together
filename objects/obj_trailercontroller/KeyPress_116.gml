/// @description Reset to Waiting Room

instance_destroy(all);
audio_stop_all();
room_goto(rm_waitingroom);