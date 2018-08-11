difference(){

    union(){

        translate([0, 0, -1]) 
        cylinder(d=5.84, h=4, $fn=32);
        
        translate([0, 0, 1]) 
        rotate([0, 0, 22.5])
        cylinder(d=6.54, h=2, $fn=8);
        
        //rotate([0,0,10])    
        translate([0-3.3/2, 0-8/2, 1])
        //rotate([0,0,10])
        cube([3.3, 8, 2]);
        
        translate([0-8/2, 0-3.3/2, 1])
        cube([8, 3.3, 2]);
        
    }
    
    translate([0, 0, -1]) 
    cylinder(d=2, h=5, $fn=32);
    
}