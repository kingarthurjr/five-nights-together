if htme_globalGet("mapSelected") = 0 //FNaF1
{
	if htme_globalGet("bbLocation") = 18
	{
		htme_globalSet("springtrap",7,buffer_s8);
	}
	if htme_globalGet("bbLocation") < 18 and htme_globalGet("bbLocation") >= 16
	{
		htme_globalSet("springtrap",5,buffer_s8);
	}
	if htme_globalGet("bbLocation") = 21
	{
		htme_globalSet("springtrap",8,buffer_s8);
	}
	if htme_globalGet("bbLocation") < 21 and htme_globalGet("bbLocation") >= 19
	{
		htme_globalSet("springtrap",6,buffer_s8);
	}
}
if htme_globalGet("mapSelected") = 1 //FNaF2
{
	if camNumber = 1
	{
		htme_globalSet("springtrap",4,buffer_s8);
	}
	if camNumber = 2
	{
		htme_globalSet("springtrap",14,buffer_s8);
	}
	if camNumber = 3
	{
		htme_globalSet("springtrap",15,buffer_s8);
	}
}