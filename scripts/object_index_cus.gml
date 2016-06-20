
if object_index = oWall2 {
    return 2;
}
if object_index = oSpikes {
    return 3;
}
if object_index = oWall {
    return 1;
}
if object_index = oWall {
    return 1;
}

switch (object_index) {
    case oWall:
    return 1
    ; break;
    
    case oWall2:
    return 2
    ; break;
    
    case oSpikes:
    return 3
    ; break;

}

