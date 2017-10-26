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


Citro5_40_mod();


module Citro5_40_mod(){
    difference(){
        
        union(){
            
            translate([0,0,0])
            //color("red")
            import("MiniPlan5_40.stl", convexity=3);
            
            translate([0, 7, 34]) hull(){
                
                translate([-15, 0, 0]) rotate([0, 0, 0]) cylinder(d=3, h=12, $fn=32);
                translate([15, 0, 0]) rotate([0, 0, 0]) cylinder(d=3, h=12, $fn=32);
                translate([11, 4, 0]) rotate([11, -10, 0]) cylinder(d=3, h=12, $fn=32);
                translate([-11, 4, 0]) rotate([11, 10, 0]) cylinder(d=3, h=12, $fn=32);
                
            
            }
            
            //was 35
            translate([0, 1, 34]) {
            
            translate([-31/2,-26/2,-1]) 
            cylinder(d=5, h=5);
            
            translate([-31/2, 26/2-7.5,-1]) 
            cylinder(d=5, h=5);
            
            translate([31/2,-26/2,-1]) 
            cylinder(d=5, h=5);
            
            translate([31/2, 26/2-7.5,-1]) 
            cylinder(d=5, h=5);
            
        }

            
            //new wider ears to put speakers
            //color("green", 0.4)
            translate([19.9, -2.5, 25.5])
            rotate([0, 90, 0])
            cylinder(d1=26, d2=19, h=3.2, $fn=64);
            
            //color("green", 0.4)
            translate([-19.9, -2.5, 25.5])
            rotate([0, -90, 0])
            cylinder(d1=26, d2=19, h=3.2, $fn=64);
            
            
            //color("orange", 0.3)
            translate([0, -3.2, 37.5])
            cube([25, 22, 4], center=true);
            
        }
        
        translate([-25,-20,41.75])
        cube([50, 40, 20]);
        
        translate([-26/2,-26/2-2,29])
        cube([26, 26, 7]);
        
        translate([0,-3,34.5])
        //rotate([0,0,180])
        pi_camera();
        
        
        translate([0, -3, 36]) {
            
            translate([-21/2,-20/2,-1]) 
            cylinder(d=2, h=5);
            
            translate([-21/2, 20/2-7.5,-1]) 
            cylinder(d=2, h=5);
            
            translate([21/2,-20/2,-1]) 
            cylinder(d=2, h=5);
            
            translate([21/2, 20/2-7.5,-1]) 
            cylinder(d=2, h=5);
            
        }
        
        translate([0, 1, 33]) {
            
            translate([-31/2,-26/2,-1]) 
            cylinder(d=2, h=8);
            
            translate([-31/2, 26/2-7.5,-1]) 
            cylinder(d=2, h=8);
            
            translate([31/2,-26/2,-1]) 
            cylinder(d=2, h=8);
            
            translate([31/2, 26/2-7.5,-1]) 
            cylinder(d=2, h=8);
            
        }
        
        
        //cavity for ear speakers
        //color("green", 0.4)
        translate([19.9, -2.5, 27]) 
        union(){
            intersection(){
            
         
                cube([4, 15.5, 15.5], center=true);
                
                rotate([45, 0, 0])
                cube([4, 17.5, 17.5], center=true);
                
            }
                
            translate([0, 0, -7.5])
            cube([4, 13, 4.6], center=true);
            
            translate([1.9, 0, 0])
            rotate([0, 90, 0])
            cylinder(d=11, h=2, $fn=32);
            
            
        }
        
        
        translate([-19.9, -2.5, 27]) 
        union(){
            intersection(){
            
         
                cube([4, 15.5, 15.5], center=true);
                
                rotate([45, 0, 0])
                cube([4, 17.5, 17.5], center=true);
                
            }
                
            translate([0, 0, -7.5])
            cube([4, 13, 4], center=true);
            
            translate([-1.9, 0, 0])
            rotate([0, -90, 0])
            cylinder(d=11, h=2, $fn=32);
            
            
        }
        
        

        
            
        
        
        
    }

}
