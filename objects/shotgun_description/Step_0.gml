if(state == "in")
{
    if((x - 20) <= 0)
    {
        x = 0
        state = "idle"
        alarm[0] = 60
    }
    else
        x -= 20
}

if(state == "out")
{
    if((x - 20) <= -__view_get( e__VW.WView, 0 ))
    {
        instance_destroy()
    }
    else
        x -= 20
}

