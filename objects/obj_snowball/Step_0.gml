

if(place_meeting(x,y,obj_platform) || place_meeting(x,y,obj_bottom))
{
	x += dir;
}
else
{
	y+=ymoveRate;	
}