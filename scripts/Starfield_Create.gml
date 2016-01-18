///Starfield_Create()

/*
 The starfield object represents a single "sheet" of the starfield of which there can be multiple sheets to create a parallax feel. 
 Look into Starfield_Generate(...) for details on generating a multi-layer starfield.
*/

// Init our vars
render_surface = 0;
yspeed = 0;
max_star_size = 0;
surface_width = 0;
surface_height = 0;
surface_current_y = 0;
max_stars = 0;
star_color = 0;
enabled = true;
