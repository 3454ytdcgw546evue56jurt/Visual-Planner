draw_self();

Draw_Text = Text_Typer(Text,sprite_width,sprite_height)

draw_text((x-(sprite_width/2))+border_size,(y-(sprite_height/2)+border_size),Draw_Text);

//show_debug_message(Draw_Text);

if(debug_mode)
{
	draw_rectangle(x-(sprite_width/2),y-(sprite_height/2),x+(sprite_width/2),y+(sprite_height/2),true);
	
	draw_point((x-(sprite_width/2))+border_size,(y-(sprite_height/2)+border_size));
}