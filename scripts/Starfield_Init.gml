///Starfield_Init( starfield , resolutionx , resolutiony , speed , max_stars , max_star_size , star_color )

/*
 * Initialize starfield with a given set of parameters.
 */
 
 // Get our vars
 sf = argument0;
 sf.surface_width = argument1;
 sf.surface_height = argument2;
 sf.yspeed = argument3;
 sf.max_stars = argument4;
 sf.max_star_size = argument5;
 sf.star_color = argument6;
 
 // Create and clear surface
 sf.render_surface = surface_create( sf.surface_width , sf.surface_height );
 surface_set_target( sf.render_surface );
 draw_clear_alpha( c_black , 0 );
 
 // Draw stars on surface
 for( var i = 0; i < sf.max_stars; i++){
    var randx = random( sf.surface_width );
    var randy = random( sf.surface_height );
    draw_rectangle_colour( randx , randy , randx + random(sf.max_star_size) , randy + random(sf.max_star_size) , sf.star_color , sf.star_color, sf.star_color, sf.star_color , false );
 }
 
 // Reset our surface/cleanup
 surface_reset_target();
