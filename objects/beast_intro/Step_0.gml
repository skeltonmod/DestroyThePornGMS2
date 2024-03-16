if(my_state == "in")
{
    if((x == 0) && (y == 0))
    {
        my_state = "idle"
        alarm[0] = 60
    }
    else
    {
    
        if((x - 10) <= 0)
            x = 0
        else
            x -= 10
            
        if((y + 3) >= 0)
            y = 0
        else
            y += 3
    }
}

if(my_state == "out")
{
    if((x == -__view_get( e__VW.WView, 0 )) && (y == -30))
        instance_destroy()
    else
    {
        if((x - 10) <= -__view_get( e__VW.WView, 0 ))
            x = -__view_get( e__VW.WView, 0 )
        else
            x -= 10
            
        if((y + 3) <= -30)
            y = -30
        else
            y -= 3
    }
}