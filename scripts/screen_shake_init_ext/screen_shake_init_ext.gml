/// @description screen_shake_init_ext(xpower,ypower,xfade,yfade,view)
/// @function screen_shake_init_ext
/// @param xpower
/// @param ypower
/// @param xfade
/// @param yfade
/// @param view
/*
Should be ran in the create event of any object running the "screen_shake_step" to init
variables. You may also use the simplified version of this script.

This script sets the variables for the effect.
If a the defined view is not active and visible it will set it to be active and visible
as this effect does not work without a view.

This script allows you to set seperate values for the shake and fade on the x and y axis
meaning more complicated screen shakes can be created.
*/
xshake=argument0; //x shake
yshake=argument1; //y shake
xshake_dist=argument2; //x shake fade
yshake_dist=argument3; //y shake fade

//enable a view if it isn't already active
if (!__view_get( e__VW.Visible, argument4 )){
    __view_set( e__VW.Visible, argument4, true );
}
if (!view_enabled){
    view_enabled=true;
}
