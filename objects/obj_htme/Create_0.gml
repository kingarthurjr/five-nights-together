/// @description htme_init(); - Start engine
htme_init();

htme_serverEventHandlerDisconnecting(scr_serverGuardCheck);

global.my_room_code = "";

guardHash = "";