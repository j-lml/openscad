module aro(h,r,grosor) {
    
    difference() {
        cylinder( h,r, r, false);                           
        translate([0,0,0.1]) cylinder( h+1,r-grosor, r-grosor, false);    
    }
    
}

module po(sizex,sizey,height=0.4) {    
difference() {
    resize([sizex,sizey,height])    
  surface(file = "drpo01.png", center = true, invert=false);
    
    translate([0,0,0.0])
 cube([sizex+0.1,sizey+0.1,0.1],true);
}
}

module po_inv(sizex,sizey,height=0.6) {    
    difference() {
        
    translate([0,0,height])
    resize([sizex,sizey,height])    
  surface(file = "drpo01.png", center = true, invert=true);
    
    
    translate([0,0,0.0])
 cube([sizex+0.1,sizey+0.1,0.1],true);
}
}




module agv() {
    center=true;
    hbase=2;
    dbase=30;
    rbase=dbase/2;
    
    hsup=3;
    dsup=19.8;
    rsup=dsup/2;
    
    //oreja
    translate([rbase-6 ,0,-1])
        cube( [4, 1, 1] );    
    translate([-rbase+2 ,0,-1])
        cube( [4, 1, 1] );
    
    //po
    translate([0,0,0])   
     rotate([0,180,180])
        po_inv(20,15);            
    
    //base               
	translate([0,0,0])    
    cylinder( hbase,rbase-2, rbase, false);    
    
    
    
/*
    hull() {
    translate([0,0,0])
    cylinder( hbase,rbase, rbase, false);
    
    translate([0,0,-1])
        sphere(1,1);
    }
*/
    
    //sup
    grosor=1;    
    translate([0,0,hbase]) 
        aro(hsup, rsup, grosor);

      

	//tapa
	gtapa=0.8;
	w=16+10;
	d=16;
	hlat=hbase+hsup;
	
	difference() {

	translate([0,0,hlat]) 
		cylinder( gtapa,rsup, rsup, false);
	
   translate([-w/2,-d/2,hlat-1])
		cube([w,d,gtapa+2],false);

	}

	
  
}

agv();