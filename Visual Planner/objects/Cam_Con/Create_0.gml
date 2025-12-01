motion_mouse_x = 0;
motion_mouse_y = 0;

prev_mouse_x = 0;
prev_mouse_y = 0;

Screen_X = camera_get_view_x(view_camera[0]);
Screen_Y = camera_get_view_y(view_camera[0]);

Screen_W = camera_get_view_width(view_camera[0]);
Screen_H = camera_get_view_height(view_camera[0]);

aspect_ratio = Screen_W/Screen_H;

Zoom_Speed = 0.3;

draw_set_font(Font1);