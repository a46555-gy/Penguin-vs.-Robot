if (irandom(4) == 0)
{
    warning_id = instance_create_depth(x, 120, -100, obj_warning);
    alarm[2] = 180;
}
else
{
    alarm[0] = 180; 
}