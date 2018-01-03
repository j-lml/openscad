w=33;
f=14;

//SUELO

translate([-w/2,-f/2,0])
cube( [w,f,1], false );

//PARED

translate([-1,0,-1])
rotate( [0,-3,0] )

hull() {

translate([w/2,f/2,0])
cube( [1,1,15], false );

translate([w/2,-f/2,0])
cube( [1,1,12], false );

}


//PARED

translate([0,0,-1])
rotate( [0,3,0] )

hull() {

translate([-w/2,f/2,0])
cube( [1,1,15], false );

translate([-w/2,-f/2,0])
cube( [1,1,12], false );

}

//PESTAÑA

translate([-w/2-2,0,12])
rotate([0,90,0])
cylinder( 3, 1, 1 );

translate([w/2-1,0,12])
rotate([0,90,0])
cylinder( 3, 1, 1 );