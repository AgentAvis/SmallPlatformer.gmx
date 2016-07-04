    //clean up the last map
    with (oBlock) { instance_destroy() }
    with (oPlayerSpawnPoint) { instance_destroy() }
    //make sure everything tiles
    global.tile = true
    //choose what file you wanna open
    file = get_open_filename_ext("*.ini","","C:\Users\ASUS1\AppData\Local\SmallPlatformer","Choose a level to edit")
    if file != "" { //if the player didn't cancel, move on
        ini_open(file) //open the file the player chose
        Num = ini_read_real("Blocknum","Num",0) //how many 'blocks' do i place?
        while Num > 0 {
        
            var x_pos = ini_read_real("Block"+string(Num),"x_pos",-1)
            var y_pos = ini_read_real("Block"+string(Num),"y_pos",-1) 
            var index = ini_read_real("Block"+string(Num),"index",-1)
            index = object_index_cus(index) 
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