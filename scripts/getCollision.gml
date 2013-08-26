var ox = argument0;
var oy = argument1;
var lx = argument2;
var ly = argument3;
var obj = argument4;

var i = collision_line_first(ox, oy, ox + lx * 1000, oy + ly * 1000, obj, true, true);
var cx = -1;
var cy = -1;

if(i != noone)
{
    var len1 = sqrt((ox - i.x) * (ox - i.x) + (oy - i.y) * (oy - i.y));
    var len2 = sqrt((ox - i.x) * (ox - i.x) + (oy - (i.y + 32)) * (oy - (i.y + 32)));
    var len3 = sqrt((ox - (i.x + 32)) * (ox - (i.x + 32)) + (oy - i.y) * (oy - i.y));
    var len4 = sqrt((ox - (i.x + 32)) * (ox - (i.x + 32)) + (oy - (i.y + 32)) * (oy - (i.y + 32)));
    if(len1 < len2 && len1 < len3 && len1 < len4)
    {
        cx = i.x;
        cy = i.y;
    }
    else if(len2 < len1 && len2 < len3 && len2 < len4)
    {
        cx = i.x;
        cy = i.y + 32;
    }
    else if(len3 < len2 && len3 < len1 && len3 < len4)
    {
        cx = i.x + 32;
        cy = i.y;
    }
    else if(len4 < len2 && len4 < len3 && len4 < len1)
    {
        cx = i.x + 32;
        cy = i.y + 32;
    }
}

var result = ds_list_create();
ds_list_add(result, i);
ds_list_add(result, cx);
ds_list_add(result, cy);

return result;
