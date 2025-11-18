// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_get_anim_icon(id)
{
	switch(id)
	{
		//Freddy
		case 1: //Freddy
		case 8: //Toy Freddy
		case 12: //Withered Freddy
			return 0;
			
		//Bonnie
		case 2: //Bonnie
        case 9: //Toy Bonnie
        case 13: //Withered Bonnie
            return 1;

        // Chica
        case 3: //Chica
        case 10: //Toy Chica
        case 14: //Withered Chica
            return 2;

        // Foxy
        case 4: //Foxy
        case 11: //The Mangle
        case 15: //Withered Foxy
            return 3;

        // Puppet
        case 5:
            return 4;

        // Springtrap
        case 6:
            return 5;

        // Mimic (its own icon OR special rules)
        case 7:
            return 6;
    }

	// Fallback
	return 0;
}