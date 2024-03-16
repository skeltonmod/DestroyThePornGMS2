if (place_free(x, y + 1))
    vspeed += .25
else
    vspeed = 0

if (abs(vspeed)) {
    var x1, y1;
    x1 = x
    y1 = y

    /*** first check if we are stuck in an object. If so, escape the object and exit the script ***/
    // handle horizontal movement
    if (abs(hspeed)) {
        // if the we can slide down, and the user wants us to, then do so
        if (!place_free(x, y + 5) && 0)
            move_contact_solid(270, 5)
    }

    // handle vertical movement
    if (abs(vspeed))
        move_contact_solid(point_direction(0, 0, 0, vspeed), abs(vspeed))

    // floor
    if ((vspeed > 0) && !place_free(x, y + 1))
        vspeed = 0
    // cieling
    if ((vspeed < 0) && !place_free(x, y - 1))
        vspeed = 0

    // side walls
    if (x1 == x)
        hspeed = 0

    // move the player back for physics reasons
    x -= hspeed
    y -= vspeed
}