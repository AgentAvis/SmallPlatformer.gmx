    with (oBlock) { instance_destroy() }
    with (oPlayerSpawnPoint) { instance_destroy() }
    global.tile = true
    file = get_open_filename_ext("*.ini","","C:\Users\ASUS1\AppData\Local\SmallPlatformer","Choose a level to edit")
    if file != "" { //if the player didn't cancel, move on
        ini_open(file)
        Num = ini_read_real("Blocknum","Num",0)
        while Num > 0 {
            var x_pos = ini_read_real("Block"+string(Num),"x_pos",-1)
            var y_pos = ini_read_real("Block"+string(Num),"y_pos",-1) 
            var index = ini_read_real("Block"+string(Num),"index",-1) 
            instance_create(x_pos,y_pos,index)
            
            Num --;
        }
        var px = ini_read_real("Player","x_pos",-1)
        var py = ini_read_real("Player","y_pos",-1) 
        if room = rEditor {
            instance_create(px,py,oPlayerSpawnPoint)
        } else {
            instance_create(px,py,oPlayer)
        }
        ini_close()
    }
