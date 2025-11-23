/// @description Break Camera

//Which Camera?
camera = htme_globalGet(global.animatronics[global.animatronicChosen-1]);

//Set it to broken
if success = true
{
	if htme_globalGet("mapSelected") = 0 //FNaF1
	{
		if camera = 0
		{
			htme_globalSet("cam1a",1,buffer_bool);
		}
		if camera = 3
		{
			htme_globalSet("cam1b",1,buffer_bool);
		}
		if camera = 4
		{
			htme_globalSet("cam5",1,buffer_bool);
		}
		if camera = 5
		{
			htme_globalSet("cam2a",1,buffer_bool);
		}
		if camera = 6
		{
			htme_globalSet("cam4a",1,buffer_bool);
		}
		if camera = 7
		{
			htme_globalSet("cam2b",1,buffer_bool);
		}
		if camera = 8
		{
			htme_globalSet("cam4b",1,buffer_bool);
		}
		if camera = 10
		{
			htme_globalSet("cam3",1,buffer_bool);
		}
		if camera = 11
		{
			htme_globalSet("cam7",1,buffer_bool);
		}
	}
	if htme_globalGet("mapSelected") = 1 //FNaF2
	{
		if camera = 0
		{
			htme_globalSet("cam09",1,buffer_bool);
		}
		if camera = 5
		{
			htme_globalSet("cam11",1,buffer_bool);
		}
		if camera = 6
		{
			htme_globalSet("cam10",1,buffer_bool);
		}
		if camera = 7
		{
			htme_globalSet("cam12",1,buffer_bool);
		}
		if camera = 8
		{
			htme_globalSet("cam07",1,buffer_bool);
		}
		if camera = 9
		{
			htme_globalSet("cam08",1,buffer_bool);
		}
		if camera = 10
		{
			htme_globalSet("cam01",1,buffer_bool);
		}
		if camera = 11
		{
			htme_globalSet("cam02",1,buffer_bool);
		}
		if camera = 12
		{
			htme_globalSet("cam03",1,buffer_bool);
		}
		if camera = 13
		{
			htme_globalSet("cam04",1,buffer_bool);
		}
		if camera = 14
		{
			htme_globalSet("cam05",1,buffer_bool);
		}
		if camera = 15
		{
			htme_globalSet("cam06",1,buffer_bool);
		}
	}
	htme_globalSet("bonnieBroke",1,buffer_bool);
}