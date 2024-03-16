if(my_state == "closing")
{
    if((y + 1) >= 96)
    {
        y = 96
        my_state = "down"
        door_down = true
    }
    else
        y += 1
}