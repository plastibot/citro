include <Config.scad>
use <servo_12g.scad>
use <servo_5g.scad>
use <electronics.scad>


rotate([180, 0, 0])
Citro6_26();


module Citro6_26(){
    
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
                    cube([4, 1, 2], center=true);
                    
                    translate([-55.9/2,-30/2+3.5-3.5,-2.5])
                    cube([4, 2, 1], center=true);
                    
                    
                }   
                
                
                translate([55.9/2,-30/2+3.5-3,2.5])
                cube([4, 3, 5], center=true);
                //cylinder(d=5, h=5);
                
                translate([55.9/2,-30/2+3.5-4,1])
                cube([4, 1, 8], center=true);
                
                hull(){
                
                    translate([55.9/2,-30/2+3.5-4,-2])
                    cube([4, 1, 2], center=true);
                    
                    translate([55.9/2,-30/2+3.5-3.5,-2.5])
                    cube([4, 2, 1], center=true);
                    
                    
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

