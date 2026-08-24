// Inherit the parent event
event_inherited();

ini_open("settings.ini");
ini_write_real("Game","BBLure",1);
ini_close();