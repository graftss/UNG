if (global.dotKid)
{
    if (!instance_exists(objPlayerCircle))
    {
        instance_create(x, y, objPlayerCircle);
    }
    else { instance_destroy(objPlayerCircle); }
}
else { exit; }
