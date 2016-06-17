///mouse_over()
///Returns true if cursor is within object's bounding box
return (mouse_x - view_xview[0] >= bbox_left &&
        mouse_x - view_xview[0]<= bbox_right &&
        mouse_y - view_yview[0]>= bbox_top &&
        mouse_y - view_yview[0]<= bbox_bottom);
