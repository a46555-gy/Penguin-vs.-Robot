
if(triggered)
{
	if(!audio_is_playing(buttonEffect12) && count == 0)
	{
		audio_play_sound(buttonEffect12,10,false);
		count++;
	}
	image_index = 1;
}
if(!triggered)
{
	count = 0;
	image_index = 0;
}
