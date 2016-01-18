///Starfield_Draw()

// RETURN: No render surface
if(!surface_exists(render_surface)){ return 0; }

// RETURN: Not enabled
if(!enabled){ return 0; }

surface_current_y += yspeed;

// If we've gone far enough, snap the surfaces back up based on their direction
if(yspeed > 0){
    if(surface_current_y > surface_height){ surface_current_y = 0; }
}
if(yspeed < 0){
    if(surface_current_y < -surface_height){ surface_current_y = 0; }
}

// Draw our starfield surface
  draw_surface(self.render_surface,0,surface_current_y);


// Draw our copy surface behind our front surface 
if(yspeed >0 ){
    draw_surface(self.render_surface , 0 , surface_current_y - surface_height );
}

if(yspeed < 0 ){
    draw_surface(self.render_surface , 0 , surface_current_y + surface_height );
}
