/// scrSetSpikeSprite(object, skin, blend)

var object = argument0; // (object name)
skinname = argument1; // (string)
colour = argument2; // (colour)

with object {
    if sprite_exists(asset_get_index(sprite_get_name(sprite_index)+"_"+other.skinname)){
        sprite_index = asset_get_index(sprite_get_name(sprite_index)+"_"+other.skinname)
    }
    depth =30
    image_blend=other.colour
}

