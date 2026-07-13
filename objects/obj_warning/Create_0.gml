sprite_prefetch(spr_menu_bg);
sprite_prefetch(spr_menu_freddy);
sprite_prefetch(spr_menu_bonnie);
sprite_prefetch(spr_menu_chica);
sprite_prefetch(spr_menu_title);
sprite_prefetch(spr_static);
sprite_prefetch(spr_staticbar);
sprite_prefetch(spr_switch);

instance_create(0,0,obj_fadein);
alarm[0] = room_speed*3.5;