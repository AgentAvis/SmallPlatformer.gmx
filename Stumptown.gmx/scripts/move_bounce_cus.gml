//determine what side i'm colliding with things
var Left, Right, Up, Down;
Left = place_meeting(x+4,y,oSolid)
Right = place_meeting(x-4,y,oSolid)
Up = place_meeting(x,y-4,oSolid)
Down = place_meeting(x,y+4,oSolid)

if Left or Right { hsp = -hsp }
if Up or Down { vsp = -vsp }