///Starfield_Destroy()

/*
 * Starfield destructor.
 */
 
enabled = false;

if(surface_exists(render_surface))
{
    surface_free(render_surface);
}
