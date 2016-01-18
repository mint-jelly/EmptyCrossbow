///Starfield_Generate( num_layers , max_stars , max_star_size , star_color , yspeed )

/*
 * Generates a multi-layer starfield.
 */
 
// Get our vars
num_layers = argument0;
max_stars = argument1;
max_star_size = argument2;
star_color = argument3;
yspeed = argument4;

// Generate our layers 
var stars_per_sheet = max_stars/num_layers;
var current_speed = yspeed;
for( var i = 0; i < num_layers; i++ ){
    var sf = instance_create( 0 , 0 , Starfield );
    Starfield_Init( sf , room_width , room_height , current_speed , stars_per_sheet , max_star_size , star_color );
    
    // Halve the speed after each loop to create a parallax effect
    current_speed = current_speed/2;
    
    if( sign(yspeed) == -1 && current_speed > -1 ){
        current_speed = -1;
    }
    
    if( sign(yspeed) == 1 && current_speed < 1 ){
        current_speed = 1;
    }
}
