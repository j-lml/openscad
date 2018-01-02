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

agv();