



num = instance_number(oBlock)
popup = get_string("Name the level","ChangeMe")
if popup != "" { //if the player didn't cancel, move on
    ini_open(popup+".ini")
    ini_write_real("Blocknum","Num",num) //how many blocks are there?
    while (num > 0) {
        Bee = instance_nth_nearest(0,0,oBlock,num)
        ini_write_real("Block"+string(num), "x_pos", Bee.x)
        ini_write_real("Block"+string(num), "y_pos", Bee.y) 
        ini_write_real("Block"+string(num), "index", Bee.object_index)//object_get_name(Bee)) 
        num --;
    }
    ini_write_real("Player", "x_pos", oPlayerSpawnPoint.x)
    ini_write_real("Player", "y_pos", oPlayerSpawnPoint.y) 
    
    ini_close()
}

