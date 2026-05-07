if(!notPressable)
{
	if !instance_exists(o_transition)
	{
		var _inst = instance_create_layer(x,y,"Instances", o_transition);
		if room == instructionRoom _inst.target_room = startRoom;
	}
}