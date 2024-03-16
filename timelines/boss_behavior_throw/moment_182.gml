if(instance_exists(beast_b_fist))
{
    with(beast_b_fist)
    {
		show_debug_message("OTEN")
        state_set(boss_behavior_charge)
        alarm[1] = 90
    }
}
else if(instance_exists(beast_f_fist))
{
    with(beast_f_fist)
    {
        state_set(boss_behavior_charge)
        alarm[1] = 75
    }
}
else
{
    with(beast_head)
    {
        state_set(boss_behavior_charge)
        alarm[1] = 60
    }
}