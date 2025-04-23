motion_mouse_x = mouse_x - prev_mouse_x;
motion_mouse_y = mouse_y - prev_mouse_y;

if(!instance_exists(global.Mouse_Claimed) || global.Mouse_Claimed = self)
{
	if(point_in_rectangle(mouse_x,mouse_y,x-collision_box_size,y-collision_box_size,x+collision_box_size,y+collision_box_size))
	{
		if(mouse_check_button(mb_left))
		{
			x = mouse_x;
			y = mouse_y;
			global.Mouse_Claimed = self;
		}
	}
	else if(point_in_rectangle(mouse_x,mouse_y,x2-collision_box_size,y2-collision_box_size,x2+collision_box_size,y2+collision_box_size))
	{
		if(mouse_check_button(mb_left))
		{
			x2 = mouse_x;
			y2 = mouse_y;
			global.Mouse_Claimed = self;
		}
	}
	else if(global.Mouse_Claimed = self)
	{
		global.Mouse_Claimed = noone;
	}
}