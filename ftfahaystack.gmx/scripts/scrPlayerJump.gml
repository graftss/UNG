if (((!global.Xgrav) && ((place_meeting(x, (y + sign(global.grav)), objBlock) || ((place_meeting(x, (y + sign(global.grav)), objPlatform))) || (onPlatform || place_meeting(x, (y + sign(global.grav)), objWater))))) || (global.Xgrav && (place_meeting((x + sign(global.grav)), y, objWater) || (place_meeting((x + sign(global.grav)), y, objBlock) || place_meeting((x + sign(global.grav)), y, objPlatform)))))
{
    if (!global.Xgrav) { vspeed = (-jump); }
    else { hspeed = (-jump); }
    
    djump = 1; onPlatform = 0;
    audio_play_sound(sndJump, 0, false);
}
else if ((djump == 1) || (((!global.Xgrav) && place_meeting(x, (y + sign(global.grav)), objWater2)) || ((global.Xgrav && place_meeting((x + sign(global.grav)), y, objWater2)) || global.infJump)))
{
    switch(room)
    {
        default:
        if (!global.Xgrav) { vspeed = (-jump2); }
        else { hspeed = (-jump2); }
        
        sprite_index = pJump;
        audio_play_sound(sndDJump, 0, false);
        
        if ((!global.Xgrav) && (!place_meeting(x, (y + sign(global.grav)), objWater3)))
            djump = 0;
        else if (global.Xgrav && (!place_meeting((x + sign(global.grav)), y, objWater3)))
            djump = 0; //take away the player's double jump
        else
            djump = 1; //replenish djump if touching water3
        break;
    }
}
