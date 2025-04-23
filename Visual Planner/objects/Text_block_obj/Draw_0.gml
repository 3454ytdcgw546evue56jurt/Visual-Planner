draw_self();

if(debug_mode)
{
	draw_rectangle(x-(sprite_width/2),y-(sprite_height/2),x+(sprite_width/2),y+(sprite_height/2),true);
}

if(debug_mode)
{
	draw_rectangle(x-(sprite_width/2)+box_area_size,y-(sprite_height/2)+box_area_size,x+(sprite_width/2)-box_area_size,y+(sprite_height/2)-box_area_size,true);
}