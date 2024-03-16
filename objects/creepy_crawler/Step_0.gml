if(yscale)
{
    if(!collision_point(x + (xscale * 4), y + 1, par_solids, true, true))
        xscale = -xscale
    else
        x += xscale * 1
}
else
{
    if(!collision_point(x + (xscale * 4), y - 9, par_solids, true, true))
        xscale = -xscale
    else
        x += xscale * 1
}

