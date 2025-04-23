///This is used to decide is its behind or infront
//can do both x and y but not at the same time
function Is_on_side(n1,n2)
{
	//first number
	return clamp(n1-n2,-1,1);
}