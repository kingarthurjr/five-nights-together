/// @description Update UI Display

if htme_isServer()
{
	//Reset the array
	name[0] = -1;
	name[1] = -1;
	name[2] = -1;
	name[3] = -1;
	name[4] = -1;
	name[5] = -1;
	name[6] = -1;
	player[0] = -1;
	player[1] = -1;
	player[2] = -1;
	player[3] = -1;
	player[4] = -1;
	player[5] = -1;
	player[6] = -1;
	//Start filling up the array with current names
	var playerlist = htme_getPlayers();
	for(var i = 0;i<ds_list_size(playerlist);i++)
	{
	    player[i] = ds_list_find_value(playerlist,i);
	    var instance = htme_findPlayerInstance(obj_player,player[i]);
	    if (instance != noone)
		{
	        name[i] = (instance).name;
			htme_globalSet("name["+string(i)+"]",name[i],buffer_string);
	    }
	}
	
	//Create Start Button for Host
	if ds_list_size(playerlist) > 1
	{
		if !instance_exists(obj_wm_start)
		{
			instance_create_layer(480,480,"Instances_2",obj_wm_start);
		}
	}
	else //Destroy if not enough players
	{
		if instance_exists(obj_wm_start)
		{
			instance_destroy(obj_wm_start);
		}
	}
}

//Set guard name display based on number
if htme_globalGet("guardSelected") = -1
{
	guardDisplay = "Random";
}
else
{
	guardDisplay = htme_globalGet("name["+string(htme_globalGet("guardSelected"))+"]");	
}

//Set the map based on number
if htme_globalGet("mapSelected") = 0
{
	currentMap = "FNaF1";
	mapColor = c_blue;
}
if htme_globalGet("mapSelected") = 1
{
	currentMap = "FNaF2";
	mapColor = c_red;
}

//Create countdown if the game is starting
if htme_globalGet("gameStart") = 1
{
	if !instance_exists(obj_startcountdown)
	{
		instance_create_layer(0,0,"Instances_2",obj_startcountdown);
	}
}
else //if start button stopped, delete the countdown
{
	if instance_exists(obj_startcountdown)
	{
		instance_destroy(obj_startcountdown);
	}
}