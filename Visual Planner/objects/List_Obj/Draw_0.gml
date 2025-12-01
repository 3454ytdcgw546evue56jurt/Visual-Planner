draw_self();

//Drawing list

for(var i = 0;i<array_length(List_Contents);i++)
{
	draw_sprite(Text_block_spr,0,x,y+i);
}