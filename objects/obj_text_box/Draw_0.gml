/// @description Draw the text

//draw rectangle (inputbox)
draw_rectangle_color(room_width/2 - 50, room_height/2 + 75, room_width/2 + 50, room_height/2 + 95, c_white, c_white, c_white, c_white, true);

//draw text houskeeping
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
//draw_set_font(box_font);
draw_text_ext_transformed(room_width/2 - 50 + 5, room_height/2 + 75, global.name, 100, 200, 1,1,0)