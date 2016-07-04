///object_index_cus(saving = -10/loading - input the index)
var index;

if argument0 = -10 {
    //we're saving the objects index to a file
    switch (object_index) {
        case oWall:
        index = 1
        ; break;
        
        case oWall2:
        index = 2
        ; break;
        
        case oSpikes:
        index = 3
        ; break;
        
        default:
        show_error("The game tried to save unrecognised block.", true);
        ; break;
    }
    
    return index;
    
} else {
    //we're loading that index we made now
    switch (argument0) {
        case 1:
        index = oWall//.object_index //asset_get_index
        ; break;
        
        case 2:
        index = oWall2//.object_index
        ; break;
        
        case 3:
        index = oSpikes//.object_index
        ; break;
        
        default:
        show_error("The game tried loading unreconised block.", true);
        ; break;
    
    }
    
    return index;


}