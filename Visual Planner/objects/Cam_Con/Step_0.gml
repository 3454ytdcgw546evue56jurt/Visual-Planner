motion_mouse_x = prev_mouse_x - mouse_x;
motion_mouse_y = prev_mouse_y - mouse_y;

Screen_X = camera_get_view_x(view_camera[0]);
Screen_Y = camera_get_view_y(view_camera[0]);

Screen_W = camera_get_view_width(view_camera[0]);
Screen_H = camera_get_view_height(view_camera[0]);

if(mouse_check_button(mb_middle))
{
	camera_set_view_pos(view_camera[0],Screen_X+motion_mouse_x,Screen_Y+motion_mouse_y);
}

if(keyboard_check(vk_control))
{
	
	
	if(mouse_wheel_up())
	{
		camera_set_view_size(view_camera[0], Screen_W-Zoom_Speed*aspect_ratio, Screen_H-Zoom_Speed*(aspect_ratio/2));
		camera_set_view_pos(view_camera[0],Screen_X+(Zoom_Speed/2),Screen_Y+(Zoom_Speed/2));
	}
	else if(mouse_wheel_down())
	{
		camera_set_view_size(view_camera[0], Screen_W+Zoom_Speed*aspect_ratio, Screen_H+Zoom_Speed*(aspect_ratio/2));
		camera_set_view_pos(view_camera[0],Screen_X-(Zoom_Speed/2),Screen_Y-(Zoom_Speed/2));
	}
	
	show_debug_message([Screen_W,Screen_H]);
	show_debug_message(aspect_ratio);
}

if(instance_exists(global.Mouse_Claimed) && keyboard_check(vk_delete))
{
	instance_destroy(global.Mouse_Claimed);
}