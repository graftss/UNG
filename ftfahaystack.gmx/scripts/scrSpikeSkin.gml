var spike = argument0




with objSpikeUp{
    normal = abs(image_xscale)+abs(image_yscale)=2
    if normal{
        sprite_index=spike
        image_speed=0
        } 
}

with objSpikeDown{
    normal = abs(image_xscale)+abs(image_yscale)=2
    if normal{
        image_yscale*=-1
        y+=32
        sprite_index=spike
        image_speed=0
    }
}
with objSpikeRight{
    normal = abs(image_xscale)+abs(image_yscale)=2
    if normal{
        image_angle=-90
        x+=32
        sprite_index=spike
        image_speed=0
    }
}
with objSpikeLeft{
    normal = abs(image_xscale)+abs(image_yscale)=2
    if normal{
        image_angle=90
        y+=32
        sprite_index=spike
        image_speed=0
    }
}
