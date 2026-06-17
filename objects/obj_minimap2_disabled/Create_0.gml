depth = -(room_height+2);
layer = layer_get_id("UI2");
randomize();
alarm[0] = lerp(100, 400, scr_sinein(random(1)));
camerasRebooted = htme_globalGet("camerasRebooted");
blur = obj_minimap2.blur;
isUI = true;