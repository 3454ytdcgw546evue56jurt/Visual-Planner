draw_arrow(x,y,x2,y2,arrow_size);

if(debug_mode)
{
	draw_rectangle(x-collision_box_size,y-collision_box_size,x+collision_box_size,y+collision_box_size,true);
}

if(debug_mode)
{
	draw_rectangle(x2-collision_box_size,y2-collision_box_size,x2+collision_box_size,y2+collision_box_size,true);
}