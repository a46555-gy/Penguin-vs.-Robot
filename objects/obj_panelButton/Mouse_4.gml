if !instance_exists(o_transition)
{
	var _inst = instance_create_layer(x,y,"Instances", o_transition);
	if room == startRoom _inst.target_room = Room1;
}
audio_play_sound(buttonEffect,10,false);