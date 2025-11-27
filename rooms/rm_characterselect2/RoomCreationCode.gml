///Set Animatronic Defaults

//Location
htme_globalSet("freddy",0,buffer_s8);
htme_globalSet("bonnie",0,buffer_s8);
htme_globalSet("chica",0,buffer_s8);
htme_globalSet("foxy",0,buffer_s8);
htme_globalSet("puppet",0,buffer_s8);
htme_globalSet("springtrap",0,buffer_s8);
htme_globalSet("mimic",0,buffer_s8);
htme_globalSet("tfreddy",0,buffer_s8);
htme_globalSet("tbonnie",0,buffer_s8);
htme_globalSet("tchica",0,buffer_s8);
htme_globalSet("mangle",0,buffer_s8);
htme_globalSet("wfreddy",0,buffer_s8);
htme_globalSet("wbonnie",0,buffer_s8);
htme_globalSet("wchica",0,buffer_s8);
htme_globalSet("wfoxy",0,buffer_s8);
//Jumpscaring
htme_globalSet("tooLate",0,buffer_u8);
htme_globalSet("whoGot",0,buffer_u8);
//Abilities
htme_globalSet("freddySpecial",0,buffer_bool);
htme_globalSet("freddyOut",0,buffer_bool);
htme_globalSet("bonnieSpecial",0,buffer_bool);
htme_globalSet("bonnieBroke",0,buffer_bool);
htme_globalSet("ovenUse",0,buffer_u8);
htme_globalSet("foxyReady",900,buffer_u16);
htme_globalSet("bonk",0,buffer_bool);
htme_globalSet("puppetSpecial",0,buffer_bool);
htme_globalSet("puppetUsed",0,buffer_bool);
htme_globalSet("bbGame",0,buffer_bool);
//Death Coin
global.coinRoom = 0;
global.coinLocation = 0;
//Difficulty Counter
htme_globalSet("guardScore",0,buffer_u32);

global.clickable = true;