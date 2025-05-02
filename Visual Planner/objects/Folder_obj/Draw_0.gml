draw_self();

var _cur_halign = draw_get_halign();
var _cur_valign = draw_get_valign();

draw_set_halign(fa_top);
draw_set_valign(fa_middle);

draw_text(x-(sprite_width/2),y + sprite_height-2,name);

draw_set_halign(_cur_halign);
draw_set_valign(_cur_valign);

if(debug_mode)
{
	draw_rectangle(x-(sprite_width/2),y-(sprite_height/2),x+(sprite_width/2),y+(sprite_height/2),true);
}