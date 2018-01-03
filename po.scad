module aro(h,r,grosor) {
    
    difference() {
        cylinder( h,r, r, false);                           
        translate([0,0,0.1]) cylinder( h+1,r-grosor, r-grosor, false);    
    }
    
}




module agv() {
    center=true;
    hbase=2;
    dbase=30;
    rbase=dbase/2;
    
    hsup=5;
    dsup=24;
    rsup=dsup/2;
    
    //base
    hull() {
    translate([0,0,0])
    cylinder( hbase,rbase, rbase, false);
    
    translate([0,0,-1])
        sphere(1,1);
    }
    
    //sup
    grosor=1;
    
    translate([0,0,hbase]) 
        aro(hsup, rsup, grosor);
    
    translate([0,0,hbase]) 
        aro(1, rbase, 0.2);
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



 po_inv(20,15);
