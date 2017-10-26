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


Citro6_29();


module Citro6_29(){
    
    for (y =[0:1]) {
        for (x =[0:1]) {
            translate([x*10, y*10, 0])
            difference(){
                
                translate([0,0,0])
                cylinder(d=5, h=2);
                
                translate([0,0,-1])
                cylinder(d=2.6, h=4);
                
            }
        }
    }
    
}

