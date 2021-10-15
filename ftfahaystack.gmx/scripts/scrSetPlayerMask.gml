///sets the player's mask depending on gravity flip mode

if (global.dotKid)
{
    sprite_index = sprPlayerDot;
    mask_index = sprPlayerDot;
    image_speed = 0;
    
    if (!instance_exists(objPlayerCircle))
    {
        instance_create(x, y, objPlayerCircle);
    }
}
else if (global.lineKid)
{
    sprite_index = sprPlayerLine;
    mask_index = sprPlayerLine;
    image_speed = 0;
}
else if (global.lunarKid)
{
    sprite_index = sprPlayerLunar;
    mask_index = sprPlayerLunar;
    image_speed = 0;
}
else if (sign(global.grav) == 1)
{
    if (!global.Xgrav) { mask_index = sprPlayerMask; }
    else { mask_index = sprPlayerMaskX; }
}
else if (!global.Xgrav) { mask_index = sprPlayerMaskFlip; }
else { mask_index = sprPlayerMaskXFlip; }
