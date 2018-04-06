include <Config.scad>
use <servo_12g.scad>
use <servo_5g.scad>
use <electronics.scad>


Citro6_22();


module Citro6_22(){

    difference(){
        union(){
            
            //color("red")
            translate([-69.5/2, -49.5/2, 0])
            roundedRect([69.5-rad, 49.5-rad, 2], rad);

            /**
            //mouting posts for PCA9685 card
            translate([0,-5,0]) {
                    
                translate([-55.9/2,-18.8/2,0])
                cylinder(d=5, h=5);
                
                translate([-55.9/2, 18.8/2,0])
                cylinder(d=5, h=5);
                
                translate([55.9/2,-18.8/2,0])
                cylinder(d=5, h=5);
                
                translate([55.9/2, 18.8/2,0])
                cylinder(d=5, h=5);    
                
            }**/
    
            //mouting posts for pi_zero
            translate([0,-10.75,0]) {
                    
                translate([-65/2+3.5,-30/2+3.5,0])
                cylinder(d=5, h=5);
                
                translate([-65/2+3.5, 30/2-3.5,0])
                cylinder(d=5, h=5);
                
                translate([65/2-3.5,-30/2+3.5,0])
                cylinder(d=5, h=5);
                
                translate([65/2-3.5, 30/2-3.5,0])
                cylinder(d=5, h=5);    
                
            }   
       
            //monting platform for DC-DC
            //color("red")
            difference(){
                
                //translate([-65/2,-17/2+16, 2]) // old switch
                ////cube([66,17,25], center=true);
                //roundedRect([65-rad, 17-rad, 25], rad);
                translate([-69.5/2,-17.5/2+16, 2]) // new switch
                //cube([66,17,25], center=true);
                roundedRect([69.5-rad, 17.5-rad, 28], rad);
                
                translate([0,18.5, 15.5])
                cube([50,15,31], center=true);
                
                translate([-22.5,18.5, 15.5])
                cube([5,15,31], center=true);
                
                translate([22.5,18.5, 15.5])
                cube([5,15,31], center=true);
                
                translate([0,20.5, 15.5])
                cube([30,24,31], center=true);
                
                translate([0,18.5, 23])
                cube([30,24,31], center=true);
                
                translate([-11.43,13.5, 18.0])
                cube([2.6,15,20.4], center=true);
                
                translate([11.43,13.5, 18.0])
                cube([2.6,15,20.4], center=true);
                
                //translate([0,30, 21])
                //rotate([35, 0, 0])
                //cube([70,24,28], center=true);
                
                translate([0,16.5, 8])
                cube([75,7.5,9], center=true);
                
            }
            
            /**
            translate([0,-12,11])
            rotate([0,0,180])
            pca9685();
    
            translate([0,-8,5])
            rotate([0,0,0])
            pi_zero();  
           
            translate([0,11,15.5])
            rotate([0,90,90])
            dc_dc();
            **/
            
        
        
        
        }
        
        translate([-26/2, -6.5/2+56/2-6.5/2-2.5-5.5, -0.5])
        roundedRect([26-rad+1, 13-rad+1, 3], rad-1);
        
        //translate([-8/2, -12/2+56/2-9-2, -0.5])
        //roundedRect([8-rad+1, 12-rad+1, 3], rad-1);
        
        translate([-26/2, -11/2+56/2-21-0.5, -0.5])
        roundedRect([26-rad+1, 11-rad+1, 3], rad-1);
        
        translate([-4/2, -13/2-56/2+13/2+6.5+3.5+2, -0.5])
        roundedRect([4-rad+1, 13-rad+1, 3], rad-1);
        
        //side slots
        translate([-6/2-69/2, -22, -0.5])
        roundedRect([6-rad+1, 6-rad+1, 3], rad-1);
        
        translate([-6/2+69/2, -22, -0.5])
        roundedRect([6-rad+1, 6-rad+1, 3], rad-1);
        
        
        //clearance for IMU screw posts
        translate([-6/2-7.5, -5, -0.5])
        roundedRect([6-rad+1, 11-rad+1, 3], rad-1);
        
        translate([-6/2+7.5, -5, -0.5])
        roundedRect([6-rad+1, 11-rad+1, 3], rad-1);
        
        // 
        
        
        
        
        //holes to attach
        //translate([0,-2,1])
        //cylinder(d=2, h=4, center=true, $fn=64);
        
        translate([0,-19.25,1])
        cylinder(d=2, h=4, center=true, $fn=64);
        
        translate([19,-2,1])
        cylinder(d=2, h=4, center=true, $fn=64);
        
        translate([-19,-2,1])
        cylinder(d=2, h=4, center=true, $fn=64);
    
        //screw holes for pi_zero
        translate([0,-10.75,-1]) {
            
            translate([-58/2,-23/2,0])
            cylinder(r=tap_r, h=15);
            
            translate([-58/2, 23/2,0])
            cylinder(r=tap_r, h=15);
            
            translate([58/2,-23/2,0])
            cylinder(r=tap_r, h=15);
            
            translate([58/2, 23/2,0])
            cylinder(r=tap_r, h=15);    
        
        }
        
        //screw holes for dc-dc converter
        
        translate([-35/2, 10, 24])
        rotate([90, 0, 0])
        cylinder(d=2, h=10, center=true, $fn=64);
        
        translate([35/2, 10, 7])
        rotate([90, 0, 0])
        cylinder(d=2, h=10, center=true, $fn=64);
        
        translate([35/2, 10, 24])
        rotate([90, 0, 0])
        cylinder(d=2, h=10, center=true, $fn=64);
        
        translate([-35/2, 10, 7])
        rotate([90, 0, 0])
        cylinder(d=2, h=10, center=true, $fn=64);
        
        
        // cavities for on-off switch
        translate([-30, 16, 23.5]) {
            
            //translate([0, 0, 0.5]) //old switch
            //cube([6.5, 8.5, 4], center=true);
            translate([0.5, 0, 0.5]) //new switch
            cube([9.1, 13.2, 13], center=true);
            
            //translate([1, 0, 3.75]) //old switch
            //cube([4.5, 6.5, 2], center=true);
            
            //translate([0, 0, -7]) //old switch
            //cube([6.5, 6.5, 15], center=true);
            translate([1.5, 0, -5])
            cube([7.1, 13.2, 15], center=true);


            translate([1.5, -5, -7])
            cube([5.1, 13.2, 9], center=true);
            
            //holes to fasten switch
            //translate([0,6,0.5])
            //rotate([0,90,0])
            //cylinder(d=2, h=8, center=true, $fn=64);
            
            //translate([0,-6,0.5])
            //rotate([0,90,0])
            //cylinder(d=2, h=8, center=true, $fn=64);
            
            translate([-5, -4.3, -16.5])
            rotate([90, 30, 0])
            cylinder(d=7, h=10, center=true, $fn=6);
          
        }
        
        translate([30, 16, 23.5]) {
            
            //translate([0, 0, 0.5]) //old switch
            //cube([6.5, 8.5, 4], center=true);
            translate([-0.5, 0, 0.5])
            cube([9.1, 13.2, 13], center=true);
            
            //translate([-1, 0, 3.75]) //old switch
            //cube([4.5, 6.5, 2], center=true);
            
            //translate([0, 0, -7]) //old switch
            //cube([6.5, 6.5, 15], center=true);
            translate([-1.5, 0, -5])
            cube([7.1, 13.2, 15], center=true);

            translate([-1.5, -5, -7])
            cube([5.1, 13.2, 9], center=true);

            
            //holes to fasten switch
            //translate([0,6,0.5])
            //rotate([0,90,0])
            //cylinder(d=2, h=8, center=true, $fn=64);
            
            //translate([0,-6,0.5])
            //rotate([0,90,0])
            //cylinder(d=2, h=8, center=true, $fn=64);
            
            translate([5, -4.3, -16.5])
            rotate([90, 30, 0])
            cylinder(d=7, h=10, center=true, $fn=6);
          
        }
        
    
        /**
        //screw posts for PCA9685
        translate([0,-5,-1]) {
            
            translate([-55.9/2,-18.8/2,0])
            cylinder(tap_r, h=15);
            
            translate([-55.9/2, 18.8/2,0])
            cylinder(tap_r, h=15);
            
            translate([55.9/2,-18.8/2,0])
            cylinder(tap_r, h=15);
            
            translate([55.9/2, 18.8/2,0])
            cylinder(tap_r, h=15);
            
        }
        **/
    }

} 


