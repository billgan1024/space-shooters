/// @description wave(from, to, duration, offset)

// Returns a value that will wave back and forth between [from-to] over [duration] seconds
// Examples
//      image_angle = wave(-45,45,1,0)  -> rock back and forth 90 degrees in a second
//      x = wave(-10,10,0.25,0)         -> move left and right quickly

// Or here is a fun one! Make an object be all squishy!! ^u^
//      image_xscale = wave(0.5, 2.0, 1.0, 0.0)
//      image_yscale = wave(2.0, 0.5, 1.0, 0.0)

a4 = (argument1 - argument0) * 0.5;
return argument0 + a4 + sin((((argument4) + argument2 * argument3) / argument2) * (pi*2)) * a4;