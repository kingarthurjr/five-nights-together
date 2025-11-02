audio_play_sound(snd_ovenclick,10,false);
if animNum = 8
{
	with(obj_cs_tfreddy)
	{
		instance_change(obj_cs_wfreddy,true);
	}
	animNum = 12;
}
else if animNum = 9
{
	with(obj_cs_tbonnie)
	{
		instance_change(obj_cs_wbonnie,true);
	}
	animNum = 13;
}
else if animNum = 10
{
	with(obj_cs_tchica)
	{
		instance_change(obj_cs_wchica,true);
	}
	animNum = 14;
}
else if animNum = 11
{
	with(obj_cs_mangle)
	{
		instance_change(obj_cs_wfoxy,true);
	}
	animNum = 15;
}
else if animNum = 12
{
	with(obj_cs_wfreddy)
	{
		instance_change(obj_cs_tfreddy,true);
	}
	animNum = 8;
}
else if animNum = 13
{
	with(obj_cs_wbonnie)
	{
		instance_change(obj_cs_tbonnie,true);
	}
	animNum = 9;
}
else if animNum = 14
{
	with(obj_cs_wchica)
	{
		instance_change(obj_cs_tchica,true);
	}
	animNum = 10;
}
else if animNum = 15
{
	with(obj_cs_wfoxy)
	{
		instance_change(obj_cs_mangle,true);
	}
	animNum = 11;
}