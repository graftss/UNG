///flips the current vertical gravity

//set gravity
global.grav = (-global.grav);

//flip the player
with (objPlayer)
{
    djump = 1;
    
    if (!global.Xgrav) { vspeed = 0; }
    else { hspeed = 0; }
    
    jump = (-jump);
    jump2 = (-jump2);
    gravity = (-gravity);
    
    scrSetPlayerMask();
    
    if (!global.dotKid && !global.lineKid)
    {
        if (!global.Xgrav) { y += (5 * sign(global.grav)); }
        else { x += (4 * sign(global.grav)); }
    }
    else if (global.dotKid)
    {
        if (!global.Xgrav) { y += (1 * sign(global.grav)); }
        //else { x += (1 * sign(global.grav)); }
    }
    
    if (!onPlatform) { y -= (1 * sign(global.grav)); }
    else { y -= (1.49 * sign(global.grav)); }
}
