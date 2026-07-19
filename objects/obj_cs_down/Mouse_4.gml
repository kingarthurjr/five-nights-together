audio_play_sound(snd_ovenclick,10,false);
if instance_exists(obj_cs_up)
{
	if obj_cs_up.animNum = 8
	{
		with(obj_cs_tfreddy)
		{
			instance_change(obj_cs_wfreddy,true);
		}
		obj_cs_up.animNum = 12;
	}
	else if obj_cs_up.animNum = 9
	{
		with(obj_cs_tbonnie)
		{
			instance_change(obj_cs_wbonnie,true);
		}
		obj_cs_up.animNum = 13;
	}
	else if obj_cs_up.animNum = 10
	{
		with(obj_cs_tchica)
		{
			instance_change(obj_cs_wchica,true);
		}
		obj_cs_up.animNum = 14;
	}
	else if obj_cs_up.animNum = 11
	{
		with(obj_cs_mangle)
		{
			instance_change(obj_cs_wfoxy,true);
		}
		obj_cs_up.animNum = 15;
	}
	else if obj_cs_up.animNum = 12
	{
		with(obj_cs_wfreddy)
		{
			instance_change(obj_cs_tfreddy,true);
		}
		obj_cs_up.animNum = 8;
	}
	else if obj_cs_up.animNum = 13
	{
		with(obj_cs_wbonnie)
		{
			instance_change(obj_cs_tbonnie,true);
		}
		obj_cs_up.animNum = 9;
	}
	else if obj_cs_up.animNum = 14
	{
		with(obj_cs_wchica)
		{
			instance_change(obj_cs_tchica,true);
		}
		obj_cs_up.animNum = 10;
	}
	else if obj_cs_up.animNum = 15
	{
		with(obj_cs_wfoxy)
		{
			instance_change(obj_cs_mangle,true);
		}
		obj_cs_up.animNum = 11;
	}
}