// Don't allow GO to be pressed more than once.
if loading
{
	exit;
}

loading = true;
load_index = 0;
load_list = [];


//==================================================
// NIGHT GUARD
//==================================================

var is_guard =
	htme_globalGet("name[" + string(htme_globalGet("guardSelected")) + "]") = global.name;


if is_guard
{
	//================================================
	// FNaF 1
	//================================================

	if htme_globalGet("mapSelected") = 0
	{
		// Freddy
		if htme_globalGet("freddyTaken") != "none"
		{
			add_load(spr_jumpscare_freddy);
			add_load(spr_stage_freddy);
			add_load(spr_dining_freddy);
			add_load(spr_bathroom_freddy);
			add_load(spr_lefthall_freddy);
			add_load(spr_righthall_freddy);
		}

		// Bonnie
		if htme_globalGet("bonnieTaken") != "none"
		{
			add_load(spr_jumpscare_bonnie);
			add_load(spr_stage_bonnie);
			add_load(spr_dining_bonnie);
			add_load(spr_bathroom_bonnie);
			add_load(spr_lefthall_bonnie);
			add_load(spr_righthall_bonnie);
		}

		// Chica
		if htme_globalGet("chicaTaken") != "none"
		{
			add_load(spr_jumpscare_chica);
			add_load(spr_stage_chica);
			add_load(spr_dining_chica);
			add_load(spr_bathroom_chica);
			add_load(spr_lefthall_chica);
			add_load(spr_righthall_chica);
		}

		// Foxy
		if htme_globalGet("foxyTaken") != "none"
		{
			add_load(spr_jumpscare_foxy);
			add_load(spr_dining_foxy);
			add_load(spr_bathroom_foxy);
			add_load(spr_lefthall_foxy);
			add_load(spr_righthall_foxy);
		}

		// Puppet
		if htme_globalGet("puppetTaken") != "none"
		{
			add_load(spr_jumpscare_puppet);
			add_load(spr_puppetflicker);
			add_load(spr_puppetblock);
		}

		// Springtrap
		if htme_globalGet("springtrapTaken") != "none"
		{
			add_load(spr_jumpscare_springtrap);
			add_load(spr_stage_springtrap);
			add_load(spr_dining_springtrap);
			add_load(spr_bathroom_springtrap);
			add_load(spr_lefthall_springtrap);
			add_load(spr_righthall_springtrap);
		}

		// Mimic
		if htme_globalGet("mimicTaken") != "none"
		{
			add_load(spr_jumpscare_mimic);
			add_load(spr_stage_mimic);
			add_load(spr_dining_mimic);
			add_load(spr_bathroom_mimic);
			add_load(spr_lefthall_mimic);
			add_load(spr_righthall_mimic);
		}
	}


	//================================================
	// FNaF 2
	//================================================

	if htme_globalGet("mapSelected") = 1
	{
		// Toy Freddy
		if htme_globalGet("tfreddyTaken") != "none"
		{
			add_load(spr_jumpscare_tfreddy);
			add_load(spr_stage_tfreddy);
			add_load(spr_game_tfreddy);
			add_load(spr_prize_tfreddy);
			add_load(spr_cove2_tfreddy);
			add_load(spr_hall_tfreddy);
			add_load(spr_partsandservice_tfreddy);
			add_load(spr_party1_tfreddy);
			add_load(spr_party2_tfreddy);
			add_load(spr_party3_tfreddy);
			add_load(spr_party4_tfreddy);
			add_load(spr_stage_tfreddy_light);
			add_load(spr_game_tfreddy_light);
			add_load(spr_prize_tfreddy_light);
			add_load(spr_cove2_tfreddy_light);
			add_load(spr_hall_tfreddy_light);
			add_load(spr_partsandservice_tfreddy_light);
			add_load(spr_party1_tfreddy_light);
			add_load(spr_party3_tfreddy_light);
			add_load(spr_party4_tfreddy_light);
		}

		// Toy Bonnie
		if htme_globalGet("tbonnieTaken") != "none"
		{
			add_load(spr_jumpscare_tbonnie);
			add_load(spr_stage_tbonnie);
			add_load(spr_game_tbonnie);
			add_load(spr_prize_tbonnie);
			add_load(spr_cove2_tbonnie);
			add_load(spr_hall_tbonnie);
			add_load(spr_partsandservice_tbonnie);
			add_load(spr_party1_tbonnie);
			add_load(spr_party2_tbonnie);
			add_load(spr_party3_tbonnie);
			add_load(spr_party4_tbonnie);
			add_load(spr_stage_tbonnie_light);
			add_load(spr_game_tbonnie_light);
			add_load(spr_prize_tbonnie_light);
			add_load(spr_cove2_tbonnie_light);
			add_load(spr_hall_tbonnie_light);
			add_load(spr_partsandservice_tbonnie_light);
			add_load(spr_party1_tbonnie_light);
			add_load(spr_party3_tbonnie_light);
		}

		// Toy Chica
		if htme_globalGet("tchicaTaken") != "none"
		{
			add_load(spr_jumpscare_tchica);
			add_load(spr_stage_tchica);
			add_load(spr_game_tchica);
			add_load(spr_prize_tchica);
			add_load(spr_cove2_tchica);
			add_load(spr_hall_tchica);
			add_load(spr_partsandservice_tchica);
			add_load(spr_party1_tchica);
			add_load(spr_party2_tchica);
			add_load(spr_party3_tchica);
			add_load(spr_party4_tchica);
			add_load(spr_stage_tchica_light);
			add_load(spr_game_tchica_light);
			add_load(spr_prize_tchica_light);
			add_load(spr_cove2_tchica_light);
			add_load(spr_hall_tchica_light);
			add_load(spr_partsandservice_tchica_light);
			add_load(spr_party2_tchica_light);
			add_load(spr_party3_tchica_light);
		}

		// Mangle
		if htme_globalGet("mangleTaken") != "none"
		{
			add_load(spr_jumpscare_mangle);
			add_load(spr_game_mangle);
			add_load(spr_prize_mangle);
			add_load(spr_cove2_mangle);
			add_load(spr_hall_mangle);
			add_load(spr_partsandservice_mangle);
			add_load(spr_party1_mangle);
			add_load(spr_party2_mangle);
			add_load(spr_party3_mangle);
			add_load(spr_party4_mangle);
			add_load(spr_game_mangle_light);
			add_load(spr_prize_mangle_light);
			add_load(spr_cove2_mangle_light);
			add_load(spr_hall_mangle_light);
			add_load(spr_partsandservice_mangle_light);
			add_load(spr_party1_mangle_light);
			add_load(spr_party2_mangle_light);
			add_load(spr_party3_mangle_light);
			add_load(spr_party4_mangle_light);
			add_load(spr_foxy_head);
			add_load(spr_foxy_arm);
			add_load(spr_foxy_left);
			add_load(spr_foxy_right);
		}

		// Withered Freddy
		if htme_globalGet("wfreddyTaken") != "none"
		{
			add_load(spr_jumpscare_wfreddy);
			add_load(spr_stage_wfreddy);
			add_load(spr_game_wfreddy);
			add_load(spr_prize_wfreddy);
			add_load(spr_cove2_wfreddy);
			add_load(spr_hall_wfreddy);
			add_load(spr_partsandservice_wfreddy);
			add_load(spr_party1_wfreddy);
			add_load(spr_party2_wfreddy);
			add_load(spr_party3_wfreddy);
			add_load(spr_party4_wfreddy);
			add_load(spr_stage_wfreddy_light);
			add_load(spr_game_wfreddy_light);
			add_load(spr_prize_wfreddy_light);
			add_load(spr_cove2_wfreddy_light);
			add_load(spr_hall_wfreddy_light);
			add_load(spr_partsandservice_wfreddy_light);
			add_load(spr_party1_wfreddy_light);
			add_load(spr_party3_wfreddy_light);
			add_load(spr_party4_wfreddy_light);
		}

		// Withered Bonnie
		if htme_globalGet("wbonnieTaken") != "none"
		{
			add_load(spr_jumpscare_wbonnie);
			add_load(spr_stage_wbonnie);
			add_load(spr_game_wbonnie);
			add_load(spr_prize_wbonnie);
			add_load(spr_cove2_wbonnie);
			add_load(spr_hall_wbonnie);
			add_load(spr_partsandservice_wbonnie);
			add_load(spr_party1_wbonnie);
			add_load(spr_party2_wbonnie);
			add_load(spr_party3_wbonnie);
			add_load(spr_party4_wbonnie);
			add_load(spr_stage_wbonnie_light);
			add_load(spr_game_wbonnie_light);
			add_load(spr_prize_wbonnie_light);
			add_load(spr_cove2_wbonnie_light);
			add_load(spr_hall_wbonnie_light);
			add_load(spr_partsandservice_wbonnie_light);
			add_load(spr_party1_wbonnie_light);
			add_load(spr_party3_wbonnie_light);
		}

		// Withered Chica
		if htme_globalGet("wchicaTaken") != "none"
		{
			add_load(spr_jumpscare_wchica);
			add_load(spr_stage_wchica);
			add_load(spr_game_wchica);
			add_load(spr_prize_wchica);
			add_load(spr_cove2_wchica);
			add_load(spr_hall_wchica);
			add_load(spr_partsandservice_wchica);
			add_load(spr_party1_wchica);
			add_load(spr_party2_wchica);
			add_load(spr_party3_wchica);
			add_load(spr_party4_wchica);
			add_load(spr_stage_wchica_light);
			add_load(spr_game_wchica_light);
			add_load(spr_prize_wchica_light);
			add_load(spr_cove2_wchica_light);
			add_load(spr_hall_wchica_light);
			add_load(spr_partsandservice_wchica_light);
			add_load(spr_party2_wchica_light);
			add_load(spr_party3_wchica_light);
		}

		// Withered Foxy
		if htme_globalGet("wfoxyTaken") != "none"
		{
			add_load(spr_jumpscare_wfoxy);
			add_load(spr_game_wfoxy);
			add_load(spr_prize_wfoxy);
			add_load(spr_cove2_wfoxy);
			add_load(spr_hall_wfoxy);
			add_load(spr_partsandservice_wfoxy);
			add_load(spr_party1_wfoxy);
			add_load(spr_party2_wfoxy);
			add_load(spr_party3_wfoxy);
			add_load(spr_party4_wfoxy);
			add_load(spr_game_wfoxy_light);
			add_load(spr_prize_wfoxy_light);
			add_load(spr_cove2_wfoxy_light);
			add_load(spr_hall_wfoxy_light);
			add_load(spr_partsandservice_wfoxy_light);
			add_load(spr_party1_wfoxy_light);
			add_load(spr_party2_wfoxy_light);
			add_load(spr_party3_wfoxy_light);
			add_load(spr_party4_wfoxy_light);
			add_load(spr_foxy_head);
			add_load(spr_foxy_arm);
			add_load(spr_foxy_left);
			add_load(spr_foxy_right);
		}

		// Puppet
		if htme_globalGet("puppetTaken") != "none"
		{
			add_load(spr_jumpscare_puppet);
			add_load(spr_puppetflicker);
			add_load(spr_puppetblock);
		}

		// Springtrap
		if htme_globalGet("springtrapTaken") != "none"
		{
			add_load(spr_jumpscare_springtrap);
			add_load(spr_stage_springtrap);
			add_load(spr_game_springtrap);
			add_load(spr_prize_springtrap);
			add_load(spr_cove2_springtrap);
			add_load(spr_hall_springtrap);
			add_load(spr_partsandservice_springtrap);
			add_load(spr_party1_springtrap);
			add_load(spr_party2_springtrap);
			add_load(spr_party3_springtrap);
			add_load(spr_party4_springtrap);
			add_load(spr_hall_springtrap_light);
			add_load(spr_partsandservice_springtrap_light);
		}

		// Mimic
		if htme_globalGet("mimicTaken") != "none"
		{
			add_load(spr_jumpscare_mimic);
			add_load(spr_stage_mimic2);
			add_load(spr_game_mimic);
			add_load(spr_prize_mimic);
			add_load(spr_cove2_mimic);
			add_load(spr_hall_mimic);
			add_load(spr_partsandservice_mimic);
			add_load(spr_party1_mimic);
			add_load(spr_party2_mimic);
			add_load(spr_party3_mimic);
			add_load(spr_party4_mimic);
			add_load(spr_stage_mimic2_light);
			add_load(spr_game_mimic_light);
			add_load(spr_prize_mimic_light);
			add_load(spr_cove2_mimic_light);
			add_load(spr_hall_mimic_light);
			add_load(spr_partsandservice_mimic_light);
			add_load(spr_party1_mimic_light);
			add_load(spr_party2_mimic_light);
			add_load(spr_party3_mimic_light);
			add_load(spr_party4_mimic_light);
			add_load(spr_foxy_head);
			add_load(spr_foxy_arm);
			add_load(spr_foxy_left);
			add_load(spr_foxy_right);
		}
	}
}


//==================================================
// ANIMATRONIC
//==================================================
//
// No additional camera-render loading is needed
// here. These players use the normal assets loaded
// by obj_loading before character selection.
//==================================================