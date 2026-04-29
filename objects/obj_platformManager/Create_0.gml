platform_speed = 2;      
spawn_timer = 0;
spawn_interval = 120;     
platform_width = 128;      
gap = 50;               
row_gap = 30;   
row_count = 0;  

platform_height = 64;


snow_system    = part_system_create();
part_system_depth(snow_system, 10);

snow_particles = part_type_create();

part_type_shape(snow_particles, pt_shape_snow);
part_type_size(snow_particles, 0.35, 0.55, 0, 0);

part_type_color1(snow_particles, c_white);
part_type_alpha2(snow_particles, 0.8, 0.3);

part_type_speed(snow_particles, 0.1, 0.4, 0, 0);
part_type_direction(snow_particles, 200, 290, 0, 5);

part_type_life(snow_particles, 600, 900);

part_type_gravity(snow_particles, 0.01, 265);

snow_emitter = part_emitter_create(snow_system);
part_emitter_region(snow_system, snow_emitter, 0, room_width, -16, -8, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(snow_system, snow_emitter, snow_particles, -10); // 2 particles per step