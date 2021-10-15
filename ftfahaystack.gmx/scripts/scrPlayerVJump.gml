if (!global.Xgrav)
{
    if ((vspeed * global.grav) < 0) { vspeed *= 0.45; }
}
else if ((hspeed * global.grav) < 0) { hspeed *= 0.45; }
