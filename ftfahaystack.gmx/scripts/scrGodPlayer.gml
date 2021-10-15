if (instance_exists(objPlayer) && !objPlayer.hit)
{
    with (objPlayer) {
        hit = true;
        instance_create(x, y, objPlayerHit);
        image_alpha = 0.7;
        alarm[0] = 50;
    }
    
    global.death += 1;
    audio_play_sound(sndDeath, 1, false);
}
