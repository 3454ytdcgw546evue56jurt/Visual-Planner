Screen_W = camera_get_view_width(view_camera[0]);
Screen_H = camera_get_view_height(view_camera[0]);

Whole_box_Seleted = point_in_rectangle(mouse_x,mouse_y,x-(sprite_width/2),y-(sprite_height/2),x+(sprite_width/2),y+(sprite_height/2));

motion_mouse_x = prev_mouse_x - mouse_x;
motion_mouse_y = prev_mouse_y - mouse_y;

image_xscale = clamp(image_xscale,Min_Size,Screen_W);
image_yscale = clamp(image_yscale,Min_Size,Screen_H);
 
if(!instance_exists(global.Mouse_Claimed) || global.Mouse_Claimed = self)
{
	if(Whole_box_Seleted)
	{
		if(mouse_check_button(mb_left))
		{
			x = mouse_x;
			y = mouse_y;
			global.Mouse_Claimed = self;
			
			if(mouse_wheel_up())
			{
				if(keyboard_check(ord("D")))
				{
					image_xscale += scaling_speed;
				}
				else if(keyboard_check(ord("E")))
				{
					image_yscale += scaling_speed;
				}
			}
			else if (mouse_wheel_down())
			{
				if(keyboard_check(ord("D")))
				{
					image_xscale -= scaling_speed;
				}
				else if(keyboard_check(ord("E")))
				{
					image_yscale -= scaling_speed;
				}
			}
		}
		else if(mouse_check_button(mb_right))
		{
			typing = true;
		}
	}
	else if(global.Mouse_Claimed = self && mouse_check_button(mb_any))
	{
		typing = false;
		global.Mouse_Claimed = noone;
	}
}

if(typing && global.Mouse_Claimed = self)
{
	if(keyboard_check(vk_control) && keyboard_check_pressed(ord("C")))
	{
		clipboard_set_text(Text);
	}
	else if(keyboard_check(vk_control) && keyboard_check_pressed(ord("V")))
	{
		Text += clipboard_get_text();
	}
	else if(keyboard_check_pressed(vk_enter))
	{
		typing = false;
		keyboard_string = "";
	}
	else if(keyboard_check_pressed(vk_backspace))
	{
		Text = string_copy(Text,0,string_length(Text)-1);
	}
	else if(keyboard_check_pressed(vk_anykey))
	{
		Text += keyboard_string;
		keyboard_string = "";
	}
}
else
{
	keyboard_string = "";
}