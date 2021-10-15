if (global.dotKid)
{
    pIdle = sprPlayerDot;
    pJump = sprPlayerDot;
    pFall = sprPlayerDot;
    pRunning = sprPlayerDot;
    pSliding = sprPlayerDot;
    pSitting = sprPlayerDot;
    scrSetPlayerMask();
}
else if (global.lunarKid)
{
    sprite_index = sprPlayerLunar;
    image_index = 0;
    scrSetPlayerMask();
}
else if (global.lineKid)
{
    pIdle = sprPlayerLine;
    pJump = sprPlayerLine;
    pFall = sprPlayerLine;
    pRunning = sprPlayerLine;
    pSliding = sprPlayerLine;
    pSitting = sprPlayerLine;
    scrSetPlayerMask();
}
else
{
    pIdle = sprPlayerIdle;
    pJump = sprPlayerJump;
    pFall = sprPlayerFall;
    pRunning = sprPlayerRunning;
    pSliding = sprPlayerSliding;
    pSitting = sprPlayerSitting;
    scrSetPlayerMask();
}

