/// @description Trigger Outage

//Which Freddy is Active?
if htme_globalGet("freddyTaken") != "noone"
{
	activeFreddy = htme_globalGet("freddy");
}
if htme_globalGet("tfreddyTaken") != "noone"
{
	activeFreddy = htme_globalGet("tfreddy");
}
if htme_globalGet("wfreddyTaken") != "noone"
{
	activeFreddy = htme_globalGet("wfreddy");
}

//If Guard is STILL looking
if htme_globalGet("cameraActive") and htme_globalGet("camera") = activeFreddy
{
	htme_globalSet("freddyOut",1,buffer_bool);
	if instance_exists(obj_guardUI1)
	{
		obj_guardUI1.alarm[0] = 1;
	}
	if instance_exists(obj_guardUI2)
	{
		obj_guardUI2.alarm[0] = 1;
	}
	instance_destroy();
}
else
{
	alarm[0] = 1;
}