event_inherited();

Connected_to = noone;
Connected_from = noone;

on_drop = function(Self)
{
	var arro_point = instance_place(x,y,Arrow_OBJ);
	
	if(instance_exists(arro_point))
	{
		if(instance_exists(arro_point.Connected_to) && instance_exists(Self.Connected_from))
		{
			Self.Connected_from.Connected_to = arro_point;
			
			arro_point.Connected_from = Self.Connected_from;
		}
		else if(instance_exists(Self.Connected_to))
		{
			Self.Connected_to = arro_point;
			
			arro_point.Connected_from = Self.Connected_to;
		}
		
		instance_destroy(Self);
	}
}