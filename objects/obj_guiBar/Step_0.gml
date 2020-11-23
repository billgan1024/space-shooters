// Simple control to block max and min life/exp draw bar
global.currenthealth = clamp(global.currenthealth, 0, global.maxhealth);
global.currentammo = clamp(global.currentammo, 0, global.maxammo);
global.displayhealth = smooth_approach(global.displayhealth, global.currenthealth, 0.2);
global.displayammo = approach(global.displayammo, global.currentammo, 7);
global.displayscore = smooth_approach(global.displayscore, score, 0.1);



