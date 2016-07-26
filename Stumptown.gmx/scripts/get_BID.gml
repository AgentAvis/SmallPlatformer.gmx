var r = sNothing;
var BIDD = argument0 + argument1;
if BIDD < 1 { BIDD += 6 }
if BIDD > 6 { BIDD -= 6 }

switch (BIDD)
{
    case 1: r = sWallTile ; break;
    case 2: r = sSlideyWallBase; break
    case 3: r = sSpikes; break
    case 4: r = sGrass; break
    case 5: r = sPurpleBlock_8x8; break
    case 6: r = sBlastDoor; break
}
return r;
