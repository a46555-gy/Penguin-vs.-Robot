if(timer == 0)
{
	if(obj_penguin.playerScore > obj_robot.playerScore)
	{
		global.penguinWin = true;
	}
	if(obj_penguin.playerScore < obj_robot.playerScore)
	{
		global.robotWin = true;
	}
	if(obj_penguin.playerScore == obj_robot.playerScore)
	{
		global.tie = true;
	}
	room_goto(endRoom);
}