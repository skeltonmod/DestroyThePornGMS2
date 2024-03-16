instance_destroy();

step++
var flr = instance_place(x, y, par_solids)
if ((flr < 0))
    flr = instance_place(x, y, par_solids)
if ((flr >= 0))
{
    if ((vspeed > 0))
    {
        vspeed = ((-vspeed) / 3)
        hspeed *= 0.69999999999999996
        if ((vspeed > -0.59999999999999998))
            instance_destroy()
    }
}
if ((vspeed > 3))
    vspeed = 3
if ((die > 0))
{
    die--
    if ((die <= 0))
        instance_destroy()
}
if ((degrade > 0))
{
    image_index += 0.25
    if ((image_index > 8))
        instance_destroy()
}