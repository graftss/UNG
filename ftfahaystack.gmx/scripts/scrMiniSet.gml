///scrMiniSet(sprite_set)
sprite_index = argument0;

switch (sprite_index)
{
    default:
    switch(mURLD)
    {
        case 1: sprite_index = sprMiniUp; break;
        case 2: sprite_index = sprMiniRight; break;
        case 3: sprite_index = sprMiniLeft; break;
        case 4: sprite_index = sprMiniDown; break;
    } break;
}
