///flips the current horizontal gravity

//set gravity
global.Xgrav = (!global.Xgrav);

//flip the player
with (objPlayer)
{
    djump = 1;
    
    if (global.Xgrav)
    {
        vspeed = (hspeed * (-global.grav));
        hspeed = 0; gravity_direction = 0;
    }
    else
    {
        hspeed = (vspeed * (-global.grav));
        vspeed = 0; gravity_direction = 270;
    }
    
    scrSetPlayerMask();
    
    if (!global.dotKid && !global.lineKid)
    {
        if (sign(global.grav) > 0)
        {
            if (global.Xgrav)
            {
                y -= 2; x += 2;
                y = floor(y);
            }
            else
            {
                y += 2; x -= 2;
                x = floor(x);
            }
        }
        else if (global.Xgrav)
        {
            y += 3; x -= 2;
            y = floor(y);
        }
        else
        {
            y -= 2; x += 3;
            x = floor(x);
        }
    }
    
    if (!onPlatform) { y -= (1 * sign(global.grav)); }
    else { y -= (1.49 * sign(global.grav)); }
}
