/*** credit have just started and we are fading to grey ***/
if(my_state == "fade to grey")
{
    if(image_alpha >= .5)
    {
        image_alpha = .5
        my_state = "roll credits"
    }
        image_alpha += .01
}


/*** rol the credits past the screen ***/
if(my_state == "roll credits")
{
    if(y <= -sprite_get_height(sprite_index))
    {
        y = -sprite_get_height(sprite_index)
        my_state = "fade to black"
    }
        y -= 1
}

/*** fade to black and go to the thank you screen ***/
if(my_state == "fade to black")
{
    if(image_alpha >= 1)
    {
        image_alpha = 1
        room_goto(room_thanks)
    }
        image_alpha += .01
}