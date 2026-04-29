point1 = 690;
point2 = 640
yspd = 1;
image_index = 0;
image_speed = 0;

if(global.penguinWin)
{
	image_index = 1;
}
else if(global.robotWin)
{
	image_index = 2;
}
else if(global.tie)
{
	image_index = 0;
}