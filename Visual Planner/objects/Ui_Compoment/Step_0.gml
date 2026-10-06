Whole_box_Seleted = point_in_rectangle(mouse_x,mouse_y,x-sprite_xoffset,y-sprite_yoffset,x+sprite_width-sprite_xoffset,y+sprite_height-sprite_yoffset);

Screen_W = camera_get_view_width(view_camera[0]);
Screen_H = camera_get_view_height(view_camera[0]);

if(!instance_exists(global.Mouse_Claimed) || global.Mouse_Claimed = self)
{
	if(Whole_box_Seleted)
	{
		if(mouse_check_button(mb_left))
		{
			if(keyboard_check(vk_delete))
			{
				instance_destroy(self);
			}
			
			if(!Whole_box_Was_Seleted)
			{
				if(on_pick_up != noone)
				{
					script_execute(on_pick_up,self);
				}
			}
			
			x = mouse_x-(sprite_width/2);
			y = mouse_y-(sprite_height/2);
			global.Mouse_Claimed = self;
		}
	}
	else if(global.Mouse_Claimed = self)
	{
		if(!mouse_check_button(mb_left))
		{
			global.Mouse_Claimed = noone;
			
			if(on_drop != noone)
			{
				script_execute(on_drop,self);
			}
		}
		else
		{
			x = mouse_x-(sprite_width/2);
			y = mouse_y-(sprite_height/2);
		}
	}
}