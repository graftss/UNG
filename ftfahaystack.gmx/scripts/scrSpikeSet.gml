///scrSpikeSet(sprite_set)
sprite_index = argument0;

switch (sprite_index)
{
    default:
    switch(URLD)
    {
        case 1: sprite_index = sprSpikeUp; break;
        case 2: sprite_index = sprSpikeRight; break;
        case 3: sprite_index = sprSpikeLeft; break;
        case 4: sprite_index = sprSpikeDown; break;
    } break;
}
