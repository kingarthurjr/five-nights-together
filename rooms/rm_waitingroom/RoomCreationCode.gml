// 1. Set the basic rich presence text and images
// Replace "icon_main" with whatever art asset name you uploaded to Discord
np_clearpresence();
np_setpresence("Waiting for Players","In Lobby","icon","");

// 2. Identify the Lobby ID
// GMnet uses the port to distinguish servers. We use it here as our "Join Secret".
// If you have a custom server name variable, you can use that too.
var my_lobby_id = string(port); 

// 3. Set the Party Params
// The "7" here is the max players allowed in your GMnet server config
np_setpresence_partyparams(1,7, my_lobby_id); 

// 4. Set the Secret
np_setpresence_secrets("","",my_lobby_id);