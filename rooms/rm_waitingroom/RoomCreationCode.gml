var currentplayers = ds_list_size(htme_getPlayers());
np_setpresence_partyparams(currentplayers,7,global.my_room_code+"_party",DISCORD_PARTY_PRIVACY_PRIVATE);
np_setpresence_secrets("","",global.my_room_code);
np_setpresence("Waiting for Players","In Lobby","icon","");
htme_globalSet("nightReady",0,buffer_bool);