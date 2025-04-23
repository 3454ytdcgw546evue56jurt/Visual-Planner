Whole_box_Seleted = point_in_rectangle(mouse_x,mouse_y,x-(sprite_width/2),y-(sprite_height/2),x+(sprite_width/2),y+(sprite_height/2));
Side_box_Seleted = point_in_rectangle(mouse_x,mouse_y,x-(sprite_width/2)+box_area_size,y-(sprite_height/2)+box_area_size,x+(sprite_width/2)-box_area_size,y+(sprite_height/2)-box_area_size);

motion_mouse_x = prev_mouse_x - mouse_x;
motion_mouse_y = prev_mouse_y - mouse_y;

if(!instance_exists(global.Mouse_Claimed) || global.Mouse_Claimed = self)
{
	if(Whole_box_Seleted && Side_box_Seleted)
	{
		if(mouse_check_button(mb_left))
		{
			x = mouse_x;
			y = mouse_y;
			global.Mouse_Claimed = self;
		}
		else if(mouse_check_button(mb_right))
		{
			// TODO add typing text iknto the box
		}
	}
	else if(Whole_box_Seleted && !Side_box_Seleted)
	{
		if(mouse_check_button(mb_left))
		{
			if(Is_on_side(mouse_x,x)>1)
			{
				sprite_width += motion_mouse_x;
			}
			if(Is_on_side(mouse_y,y)>1)
			{
				sprite_height += motion_mouse_y;
			}
		}
	}
	else if(global.Mouse_Claimed = self)
	{
		global.Mouse_Claimed = noone;
	}
}