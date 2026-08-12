image_index = (htme_globalGet("whoGot") - 1);
if htme_globalGet("mapSelected") = 2
{
	if (htme_globalGet("whoGot")-1) = 5 or (htme_globalGet("whoGot")-1) = 6 or (htme_globalGet("whoGot")-1) = 7
	{
		image_index = (htme_globalGet("whoGot")+11);
	}
}