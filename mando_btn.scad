w=7.6;
h=7.4;
alt=3;

cube([w+2,h+2,0.2]);
translate([1,0,0])
cube([w,h,alt]);

offset(r=-3) { cube(10,10,2); }


/*
// Example 3b
scale([0.85,0.96, 0.91])
  surface(file = "mrpo1801.png", center = true, invert = false);


linear_extrude(height = 15, center = false, convexity = 12) 
	import( file="mrpo1801.dxf");

*/