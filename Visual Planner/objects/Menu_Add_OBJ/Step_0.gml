Screen_W = camera_get_view_width(view_camera[0]);
Screen_H = camera_get_view_height(view_camera[0]);

Screen_X = camera_get_view_x(view_camera[0]);
Screen_Y = camera_get_view_y(view_camera[0]);

Whole_box_Seleted = point_in_rectangle(mouse_x,mouse_y,start_screen_x+Screen_X,start_screen_y+Screen_Y,start_screen_x+Screen_X+sprite_width,start_screen_y+Screen_Y+sprite_height);

spawn_x = Screen_X+(Screen_W/2);
spawn_y = Screen_Y+(Screen_H/2);

if(Whole_box_Seleted)
{
	if(mouse_check_button_released(mb_left))
	{
		instance_create_depth(spawn_x,spawn_y,depth,Thing_to_Create);
	}
}