if TAB = 1 {   
    var r = sNothing;
    //var BIDD = argument0 + argument1;
   // var num = 7
    //if BIDD < 1 { BIDD += num }
    //if BIDD > num { BIDD -= num }
    
BIDD = cycle(argument0 + argument1,0,TAB1NUM)
    
    
    switch (BIDD)
    {
        case 1: r = sWallTile ; break;
        case 2: r = sSlideyWallBase; break
        case 3: r = sPurpleBlock_8x8; break
        case 4: r = sPurpleBlock_8x8; break
        case 5: r = sPurpleBlock_8x8; break
        case 6: r = sPurpleBlock_8x8; break
        case 7: r = sPurpleBlock_8x8; break
        default:r = sSlimeBar ;break;
    }
    return r; 
}
if TAB = 2 {   
    var r = sNothing;
    //var BIDD = argument0 + argument1;
    //var num = 3
    //if BIDD < 1 { BIDD += num }
    //if BIDD > num { BIDD -= num }
    
    BIDD = cycle(argument0 + argument1,0,TAB2NUM)
    
    switch (BIDD)
    {
        case 1: r = sSpikes; break
        case 2: r = sBlastDoor; break
        case 3: r = sPlayerSpawn; break
        default:r = sSlimeBar ;break;
    }
    return r; 
}
