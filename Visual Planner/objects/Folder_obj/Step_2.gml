if(!instance_exists(global.Mouse_Claimed) || global.Mouse_Claimed = self)
{
	if(Whole_box_Seleted)
	{
		if(mouse_check_button(mb_right))
		{
			x = mouse_x;
			y = mouse_y;
			global.Mouse_Claimed = self;
		}
	}
	else if(global.Mouse_Claimed = self)
	{
		global.Mouse_Claimed = noone;
	}
}