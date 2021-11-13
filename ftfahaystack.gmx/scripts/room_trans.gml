
    if global.grav != 1 scrFlipGrav()
    
    with instance_create(0, 0, objLevelTransition) {
        //rmToEnd = room_next(room)
    }
    
    with objPlayer {
        var inst = instance_create(x, y, objDummyPlayer);
        if instance_exists(objDummyPlayer){
            inst.image_xscale = xScale
            inst.image_yscale = global.grav
            inst.sprite_index = sprite_index
            inst.image_speed = image_speed
            inst.image_index = image_index
            }

        instance_destroy()
    }
    
    //global.autosave = true

