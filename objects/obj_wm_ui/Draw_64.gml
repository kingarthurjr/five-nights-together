//Draw Night Guard Selected
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_fnaf40);
draw_set_colour(c_white);
draw_text(40,690,guardDisplay);
draw_text(36,690,guardDisplay);
draw_text(44,690,guardDisplay);
draw_text(40,686,guardDisplay);
draw_text(40,694,guardDisplay);
draw_set_colour(c_purple);
draw_text(40,690,guardDisplay);

//Draw Map Selected
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_fnaf40);
draw_set_colour(c_white);
draw_text(40,836,currentMap);
draw_text(36,836,currentMap);
draw_text(44,836,currentMap);
draw_text(40,832,currentMap);
draw_text(40,840,currentMap);
draw_set_colour(mapColor);
draw_text(40,836,currentMap);

//Draw Map Selected
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_fnaf40);
draw_set_colour(c_white);
draw_text(40,986,visibility);
draw_text(36,986,visibility);
draw_text(44,986,visibility);
draw_text(40,982,visibility);
draw_text(40,990,visibility);
draw_set_colour(visibilityColor);
draw_text(40,986,visibility);

//Draw Player Amount
draw_set_font(fnt_fnaf60);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_black);
draw_text(1710,970,string(ds_list_size(htme_getPlayers())) + "/7");
draw_text(1706,970,string(ds_list_size(htme_getPlayers())) + "/7");
draw_text(1714,970,string(ds_list_size(htme_getPlayers())) + "/7");
draw_text(1710,966,string(ds_list_size(htme_getPlayers())) + "/7");
draw_text(1710,974,string(ds_list_size(htme_getPlayers())) + "/7");
draw_set_colour(c_white);
draw_text(1710,970,string(ds_list_size(htme_getPlayers())) + "/7");