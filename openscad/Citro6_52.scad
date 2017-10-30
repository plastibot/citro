include <Config.scad>
use <servo_12g.scad>
use <servo_5g.scad>
use <electronics.scad>


mirror()
Citro6_52();


module Citro6_52(){
    
    difference(){
        union(){
            
            translate([-2, 0, 0])
            cube([4, 10, servo5_h+6]);
            
            translate([0, 0, 0])
            cube([4, 10, 3]);
            
            translate([0, 0, 0]) hull(){
                
                translate([20, 16, 0]) 
                cylinder(d=10, h=3, $fn=32);
                
                translate([4,0,0]) 
                cube([1.5, 10, 3]);
    
            }
        }
        
        translate([20, 16, 1]) 
        cylinder(d=4, h=4, $fn=32);
        
        /**
        translate([2, 10/2, servo5_h/2+3])
        #hull(){
            
            translate([0, -5.3/2-1, -5.3/2-1])
            rotate([0, 90, 0])
            cylinder(d=2, h=2, $fn=32);
            
            translate([0, 5.3/2+1, 5.3/2+1])
            rotate([0, 90, 0])
            cylinder(d=2, h=2, $fn=32);
            
        }
        **/ 
            
        translate([0, -5.3/2+10/2, -13/2+servo5_h/2+4])
        cube([2.1, 5.6, 13]);
        
        translate([0, -9.4/2+10/2, -5.3/2+servo5_h/2+4])
        cube([2.1, 9.4, 5.6]);
        
        translate([-2.1, 10/2, servo5_h/2+4])
        rotate([0, 90, 0])
        cylinder(d=5.84, h=4, $fn=32);
        
        translate([0, 10/2, servo5_h/2+4])
        rotate([22.5, 0, 0])
        rotate([0, 90, 0])
        cylinder(d=9.54, h=4, $fn=8);
        
        translate([0, 2, servo5_h+1]) 
        cylinder(d=2, h=6.1, $fn=32);
        
        translate([0, 8, servo5_h+1]) 
        cylinder(d=2, h=6.1, $fn=32);
        
    }
}

