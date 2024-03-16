var flr = instance_place(x, y, par_solids)
if ((flr <= 0))
    flr = instance_place(x, y, par_solids)
if ((flr >= 0)) {
    if ((vspeed > 0)) {
        vspeed = ((-vspeed) / 2)
        hspeed *= 0.69999999999999996
        if ((vspeed >= -0.4))
			instance_destroy()
    }
}
if ((vspeed > 3))
    vspeed = 3