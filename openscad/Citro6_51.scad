include <servo_12g.scad>
include <servo_5g.scad>
include <electronics.scad>

rad = 2;

mount_x = servo5_l + 2;
mount_y = servo5_w + 2;
mount_round = 1;
servo_tol = 0.2;
servo5_x     = servo5_l + servo_tol*2; //~12
servo5_y     = servo5_w + servo_tol*8; //~23

// 8, 4.6, length =10 



Citro6_51();

module Citro6_51(){
    difference(){
        union(){
            
            translate([-2, 0, 0])
            cube([6, 10, 3]);
            
            //translate([20, 16, 0]) 
            //cylinder(d=12, h=3, $fn=32);
            
            translate([0, 0, 0]) hull(){
                
                translate([20, 16, 0]) 
                cylinder(d=10, h=3, $fn=32);
                
                translate([4,0,0]) 
                cube([1.5, 10, 3]);
    
            }
        }
        
        translate([20, 16, -1]) 
        cylinder(d=5.84, h=4, $fn=32);
        
        translate([20, 16, 1]) 
        rotate([0, 0, 22.5])
        cylinder(d=6.54, h=4, $fn=8);
        
        //rotate([0,0,10])    
        translate([20-3.3/2, 16-8/2, 1])
        //rotate([0,0,10])
        cube([3.3, 8, 2.1]);
        
        translate([20-8/2, 16-3.3/2, 1])
        cube([8, 3.3, 2.1]);
        
        //translate([-0.1, 10/2, servo5_h/2+3])
        //rotate([0, 90, 0])
        //#cylinder(d=5.84, h=4, $fn=32);
        
        translate([0, 2, -0.1]) 
        cylinder(d=2, h=4.1, $fn=32);
        
        translate([0, 8, -0.1]) 
        cylinder(d=2, h=4.1, $fn=32);
        
    }
}

