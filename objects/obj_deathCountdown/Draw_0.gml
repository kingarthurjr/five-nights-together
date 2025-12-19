draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_set_font(fnt_fnaf50);
draw_text(camera_get_view_x(view_camera[0])+902,camera_get_view_y(view_camera[0])+525,string(round(timer/room_speed)));