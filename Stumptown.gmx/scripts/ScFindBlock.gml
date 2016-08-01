var R = "Herpes"
if TAB = 1 {
    switch (BID)
    {
    case 1: R = oWall; break;
    case 2: R = oWall2; break;
    //case 3: R = oSpikes; break;
    //case 4: R = oGrass; break;
    //vase 6: R = oBlastDoor; break;
    }
}
if TAB = 2 {
    switch (BID)
    {
    //case 1: R = oWall; break;
    //case 2: R = oWall2; break;
    case 1: R = oSpikes; break;
    //case 4: R = oGrass; break;
    case 2: R = oBlastDoor; break;
    case 3: R = oPlayerSpawn; break;
    }

}
return R;
