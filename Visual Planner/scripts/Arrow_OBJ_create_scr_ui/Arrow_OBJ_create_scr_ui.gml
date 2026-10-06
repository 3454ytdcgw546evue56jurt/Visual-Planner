function Arrow_OBJ_create_scr_ui(X,Y,Depth)
{
	var point1 = instance_create_depth(X,Y,Depth,Arrow_OBJ);
	
	var point2 = instance_create_depth(X+30,Y,Depth,Arrow_OBJ);
	
	point1.Connected_to = point2;
	
	point2.Connected_from = point1;
}