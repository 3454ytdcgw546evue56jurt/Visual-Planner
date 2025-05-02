prev_name = name;

Screen_W = camera_get_view_width(view_camera[0]);
Screen_H = camera_get_view_height(view_camera[0]);

Whole_box_Seleted = point_in_rectangle(mouse_x,mouse_y,x-(sprite_width/2),y-(sprite_height/2),x+(sprite_width/2),y+(sprite_height/2));

motion_mouse_x = prev_mouse_x - mouse_x;
motion_mouse_y = prev_mouse_y - mouse_y;