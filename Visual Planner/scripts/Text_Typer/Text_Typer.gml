// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Text_Typer(Text,Box_W,Box_H)
{
	var Sentence = ""
	var Full_text = "";
	
	var line_start = 1;
	
	var i = 1;
	
	while(i < string_length(Text)+1)
	{
		// FIXME
		if(Text_pixel_Lengh(string_copy(Text,line_start,i-line_start))+Text_pixel_Lengh(Sentence) > Box_W)
		{
			line_start = i;
			Sentence += "\n";
		}
		
		Sentence += string_copy(Text,i,1);
		i++;
		
		if(Text_pixel_Lengh(string_copy(Text,line_start,i-line_start)) > Box_W)
		{
			line_start = i;
			Full_text += "\n";
		}
		
		if(string_copy(Text,i,1) = " " || i >= string_length(Text))
		{
			Full_text += Sentence;
			
			Sentence = "";
		}
	}
	
	return Full_text;
}