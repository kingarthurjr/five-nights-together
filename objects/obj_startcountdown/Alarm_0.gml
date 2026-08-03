done = true;

//Map Names
if htme_globalGet("mapSelected") = 0
{
	map = "FNaF1";
}
if htme_globalGet("mapSelected") = 1
{
	map = "FNaF2";
}

//Animatronic Names
if global.animatronicChosen = 1
{
	animatronic = "Freddy";
}
if global.animatronicChosen = 2
{
	animatronic = "Bonnie";
}
if global.animatronicChosen = 3
{
	animatronic = "Chica";
}
if global.animatronicChosen = 4
{
	animatronic = "Foxy";
}
if global.animatronicChosen = 5
{
	animatronic = "The Puppet";
}
if global.animatronicChosen = 6
{
	animatronic = "Springtrap";
}
if global.animatronicChosen = 7
{
	animatronic = "The Mimic";
}
if global.animatronicChosen = 8
{
	animatronic = "Toy Freddy";
}
if global.animatronicChosen = 9
{
	animatronic = "Toy Bonnie";
}
if global.animatronicChosen = 10
{
	animatronic = "Toy Chica";
}
if global.animatronicChosen = 11
{
	animatronic = "The Mangle";
}
if global.animatronicChosen = 12
{
	animatronic = "Withered Freddy";
}
if global.animatronicChosen = 13
{
	animatronic = "Withered Bonnie";
}
if global.animatronicChosen = 14
{
	animatronic = "Withered Chica";
}
if global.animatronicChosen = 15
{
	animatronic = "Withered Foxy";
}

//Assign Roles
if room = rm_waitingroom
{
	//Choose Random Guard
	if htme_isServer()
	{
		if htme_globalGet("guardSelected") = -1
		{
			randomize();
			htme_globalSet("guardSelected",irandom_range(0,ds_list_size(htme_getPlayers())-1),buffer_s8);
		}
		var currentplayers = ds_list_size(htme_getPlayers());
		np_clearpresence();
		np_setpresence_partyparams(currentplayers,7,global.my_room_code+"_party",DISCORD_PARTY_PRIVACY_PRIVATE);
		if htme_globalGet("name["+string(htme_globalGet("guardSelected"))+"]") = global.name
		{
			np_setpresence("Waiting for Night to Begin","In Game ("+map+")","icon","night_guard");
		}
		else
		{
			np_setpresence("Choosing a Character","In Game ("+map+")","icon","animatronic");
		}
	}
	room_goto(rm_loading);
}
//Spawn Animatronics
if room = rm_characterselect0 or room = rm_characterselect1 or room = rm_characterselect2
{
	np_setpresence("Playing as: "+animatronic,"In Game ("+map+")","icon","animatronic");
	if htme_globalGet("mapSelected") = 0 //FNaF1
	{
		room_goto(rm_diningarea);
	}
	if htme_globalGet("mapSelected") = 1 //FNaF2
	{
		room_goto(rm_gamearea);
	}
}
instance_destroy();