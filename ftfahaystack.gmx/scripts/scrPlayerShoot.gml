if (!global.noShoot)
{
    switch(room)
    {        
        default:
        if ((instance_number(objBullet) < 4) || (global.slowShot && (instance_number(objBullet) < 10)))
        {
            if (global.dotKid)
            {
                if (!global.Xgrav)
                {
                    if (sign(global.grav) == 1) { instance_create((x - (xScale * 6)), (y - 2), objBullet); }
                    else { instance_create((x - (xScale * 6)), (y + 1), objBullet); }
                }
                else
                {
                    if (sign(global.grav) == 1) { instance_create((x - 2), (y - (xScale * 6)), objBullet); }
                    else { instance_create((x + 1), (y - (xScale * 6)), objBullet); }
                }
            }
            else if (global.lunarKid)
            {
                instance_create((x - lengthdir_x(16, (image_angle + 90))), (y - lengthdir_y(16, (image_angle + 90))), objSpaceBullet);
            }
            else if room=rSomeday{
                instance_create(x, (y - (11*objPlayer.image_yscale)), objBullet);
            }
            else { instance_create(x, (y - 2), objBullet); }
            audio_play_sound(sndShoot, 0, false);
        } break;
    }
}
