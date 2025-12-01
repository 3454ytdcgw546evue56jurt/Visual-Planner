motion_mouse_x = prev_mouse_x - mouse_x;
motion_mouse_y = prev_mouse_y - mouse_y;

aspect_ratio = Screen_W/Screen_H;
//Screen_X = camera_get_view_x(view_camera[0]);
//Screen_Y = camera_get_view_y(view_camera[0]);

//Screen_W = camera_get_view_width(view_camera[0]);
//Screen_H = camera_get_view_height(view_camera[0]);

if(mouse_check_button(mb_middle))
{
	camera_set_view_pos(view_camera[0],Screen_X+motion_mouse_x,Screen_Y+motion_mouse_y);
}

if(keyboard_check(vk_control))
{
	if(mouse_wheel_up())
	{
		Screen_W -= ((Screen_W/2)*Zoom_Speed)*aspect_ratio;
		Screen_H -= ((Screen_H/2)*Zoom_Speed)*aspect_ratio;
		
		Screen_X += ((Screen_W/2)*Zoom_Speed)*aspect_ratio;
		Screen_Y += ((Screen_H/2)*Zoom_Speed)*aspect_ratio;
	}
	else if(mouse_wheel_down())
	{
		Screen_W += ((Screen_W/2)*Zoom_Speed)*aspect_ratio;
		Screen_H += ((Screen_H/2)*Zoom_Speed)*aspect_ratio;
		
		Screen_X -= ((Screen_W/2)*Zoom_Speed)*aspect_ratio;
		Screen_Y -= ((Screen_H/2)*Zoom_Speed)*aspect_ratio;
	}
	
	show_debug_message("Size:");
	show_debug_message([Screen_W,Screen_H]);
	show_debug_message("Pos:");
	show_debug_message([Screen_X,Screen_Y]);
	show_debug_message("Aspect Ratio:");
	show_debug_message(aspect_ratio);
}

if(instance_exists(global.Mouse_Claimed) && keyboard_check(vk_delete))
{
	instance_destroy(global.Mouse_Claimed);
}

//camera_set_view_size(view_camera[0],Screen_W,Screen_H);
		
//camera_set_view_pos(view_camera[0],Screen_X,Screen_Y);