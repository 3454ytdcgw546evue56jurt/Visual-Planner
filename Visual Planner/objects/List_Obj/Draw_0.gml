//bag
draw_sprite_stretched(Text_block_spr,0,x,y,list_widht,list_height);

//Drawing list
for(var i = 0;i<List_Contents_array_lenght;i++)
{
	draw_sprite(Text_block_spr,0,x+border,y+border+(border*i)+(64*i));
}