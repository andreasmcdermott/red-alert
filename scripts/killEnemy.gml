var ox = argument0;
var oy = argument1;

part_particles_create_color(global.particleSystem, ox, oy, global.partTypeDeath, c_red, 16);
instance_create(ox, oy, objDead);


