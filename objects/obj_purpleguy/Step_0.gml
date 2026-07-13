if htme_globalGet("mapSelected") = 0 //FNaF 1
{
	if htme_globalGet("facing") = 0 //Front
	{
		if room = rm_westhall
		{
			sprite_index = spr_purpleguy_l;
		}
		if room = rm_easthall
		{
			sprite_index = spr_purpleguy_r;
		}
	}
	if htme_globalGet("facing") = 1 //Left Door
	{
		if room = rm_westhall
		{
			sprite_index = spr_purpleguy_d;
		}
		if room = rm_easthall
		{
			sprite_index = spr_purpleguy_u;
		}
	}
	if htme_globalGet("facing") = 2 //Right Door
	{
		if room = rm_westhall
		{
			sprite_index = spr_purpleguy_u;
		}
		if room = rm_easthall
		{
			sprite_index = spr_purpleguy_d;
		}
	}
}
if htme_globalGet("mapSelected") = 1 //FNaF 2
{
	if htme_globalGet("facing") = 1 //Front Door
	{
		if htme_globalGet("mask") = 1
		{
			sprite_index = spr_larpfreddy_u;
		}
		else
		{
			sprite_index = spr_purpleguy_u;
		}
	}
	if htme_globalGet("facing") = 2 //Left Vent
	{
		if htme_globalGet("mask") = 2
		{
			sprite_index = spr_larpfreddy_l;
		}
		else
		{
			sprite_index = spr_purpleguy_l;
		}
	}
	if htme_globalGet("facing") = 3 //Right Vent
	{
		if htme_globalGet("mask") = 3
		{
			sprite_index = spr_larpfreddy_r;
		}
		else
		{
			sprite_index = spr_purpleguy_r;
		}
	}
}