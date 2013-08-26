var ox = argument0;
var oy = argument1;
var lx = argument2;
var ly = argument3;
var obj = argument4;

var i = collision_line_first(ox, oy, ox + lx * 1000, oy + ly * 1000, obj, true, true);
