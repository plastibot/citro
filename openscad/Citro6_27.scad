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


Citro6_27();


module Citro6_27(){
    
    difference(){
        
        union(){
        
            translate([0,-8,6]) {
                    
                hull(){
                    translate([-65/2+3.5,-30/2+3.5,0])
                    cylinder(d=5, h=5);
                    
                    translate([-65/2+3.5, 30/2-3.5,0])
                    cylinder(d=5, h=5);
                   
                }
            
                hull(){
            
                    translate([65/2-3.5,-30/2+3.5,0])
                    cylinder(d=5, h=5);
                    
                    translate([65/2-3.5, 30/2-3.5,0])
                    cylinder(d=5, h=5);  
                }  
                
                //hooks
                translate([-55.9/2,-30/2+3.5-3,2.5])
                cube([4, 3, 5], center=true);
                //cylinder(d=5, h=5);
                
                translate([-55.9/2,-30/2+3.5-4,1])
                cube([4, 1, 8], center=true);
                
                hull(){
                
                    translate([-55.9/2,-30/2+3.5-4,-2])
                    #cube([4, 1, 2], center=true);
                    
                    translate([-55.9/2,-30/2+3.5-3.5,-2.5])
                    #cube([4, 2, 1], center=true);
                    
                    
                }   
                
                
                translate([55.9/2,-30/2+3.5-3,2.5])
                cube([4, 3, 5], center=true);
                //cylinder(d=5, h=5);
                
                translate([55.9/2,-30/2+3.5-4,1])
                cube([4, 1, 8], center=true);
                
                hull(){
                
                    translate([55.9/2,-30/2+3.5-4,-2])
                    #cube([4, 1, 2], center=true);
                    
                    translate([55.9/2,-30/2+3.5-3.5,-2.5])
                    #cube([4, 2, 1], center=true);
                    
                    
                }
                    
            }
            
            //mouting posts for PCA9685 card
            translate([0,-12,6]) {
                        
                    translate([-55.9/2,-18.8/2,0])
                    cylinder(d=4.5, h=5);
                    
                    translate([-55.9/2, 18.8/2,0])
                    cylinder(d=4.5, h=5);
                    
                    translate([55.9/2,-18.8/2,0])
                    cylinder(d=4.5, h=5);
                    
                    translate([55.9/2, 18.8/2,0])
                    cylinder(d=4.5, h=5);
                
                    
            }
                    
        }   
        
        //screw holes for PCA9685 card
        translate([0,-12,6]) {
                        
            translate([-55.9/2,-18.8/2,-1])
            cylinder(r=tap_r, h=8);
            
            translate([-55.9/2, 18.8/2,-1])
            cylinder(r=tap_r, h=8);
            
            translate([55.9/2,-18.8/2,-1])
            cylinder(r=tap_r, h=8);
            
            translate([55.9/2, 18.8/2,-1])
            cylinder(r=tap_r, h=8);
        
        }
        
        //screw holes for pi_zero
        translate([0,-8,5]) {
            
            //translate([-58/2,-23/2,0])
            //cylinder(r=hole_r, h=15);
            
            translate([-58/2, 23/2,0])
            cylinder(r=hole_r, h=15);
            
            //translate([58/2,-23/2,0])
            //cylinder(r=hole_r, h=15);
            
            translate([58/2, 23/2,0])
            cylinder(r=hole_r, h=15);
            
        }
        
        translate([0,-8,8]) {
            
            translate([-58/2,-23/2,-2.1])
            cylinder(r=1.9, h=2);
            
            translate([-58/2,-23/2+1.9,-2.1+1])
            cube([3.8, 3.2, 2], center=true);
            
            translate([-58/2, 23/2,0])
            cylinder(r=1.9, h=15);
            
            translate([58/2,-23/2,-2.1])
            cylinder(r=1.9, h=2);
            
            translate([58/2,-23/2+1.9,-2.1+1])
            cube([3.8, 3.8, 2], center=true);   
            
            translate([58/2, 23/2,0])
            cylinder(r=1.9, h=15);
            
        }
        
        translate([-70/2,-18/2-8,5.9])
        cube([70,18, 3]);
        
    }
    
            //translate([0,-12,11])
            //rotate([0,0,180])
            //pca9685();
    
            //translate([0,-8,5])
            //rotate([0,0,0])
            //pi_zero();  
           

    
}

