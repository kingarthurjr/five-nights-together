/// @description Night Guard Events

//Which Freddy is Active?
if htme_globalGet("freddySelected")
{
	activeFreddy = htme_globalGet("freddy");
}
if htme_globalGet("mimicSelected")
{
	activeFreddy = htme_globalGet("mimic");
}
if htme_globalGet("tfreddySelected")
{
	activeFreddy = htme_globalGet("tfreddy");
}
if htme_globalGet("wfreddySelected")
{
	activeFreddy = htme_globalGet("wfreddy");
}

//Night Guard Events
if global.nightGuard
{
	//If Puppet is Blocking
	if (htme_globalGet("puppetSelected") and htme_globalGet("puppetSpecial") and htme_globalGet("camera") = htme_globalGet("puppet"))
	{
		audio_sound_gain(musicbox,0,0);
	}
	//Is the Guard looking?
	else if htme_globalGet("cameraActive") and htme_globalGet("camera") = activeFreddy
	{
		audio_sound_gain(musicbox,1,0);
		if !instance_exists(obj_trip)
		{
			instance_create(0,0,obj_trip);
		}
	}
	else
	{
		audio_sound_gain(musicbox,.1,0);
	}
}

//If Music Stopped
if !audio_is_playing(musicbox)
{
	htme_globalSet("freddySpecial",0,buffer_bool);
	if instance_exists(obj_trip)
	{
		instance_destroy(obj_trip);
	}
	instance_destroy();
}