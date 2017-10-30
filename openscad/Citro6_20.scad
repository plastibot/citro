include <Config.scad>
use <servo_12g.scad>
use <servo_5g.scad>
use <electronics.scad>


Citro6_20();


module Citro6_20(){
    
    difference(){
        
        translate([-76/2, -56/2, 0])
        roundedRect([76-rad, 56-rad, 16], rad);
        
        translate([-70/2, -50/2 ,2])
        cube([70, 50, 14.1]);
        
        //right shoulder servo hole
        translate([-76/2+1.5, 56/2-12/2-3, 2+12/2])
        rotate([0, 90, 0])
        cylinder(d=12, h=4, center=true, $fn=64);
        
        translate([-76/2+1.5, 56/2-12/2-6.30-3, 2+12/2])
        rotate([0, 90, 0])
        cylinder(d=6.59, h=4, center=true, $fn=64);
        
        //left shoulder servo hole
        translate([76/2-1.5, 56/2-12/2-3, 2+12/2])
        rotate([0, 90, 0])
        cylinder(d=12, h=4, center=true, $fn=64);
        
        translate([76/2-1.5, 56/2-12/2-6.30-3, 2+12/2])
        rotate([0, 90, 0])
        cylinder(d=6.59, h=4, center=true, $fn=64);
    
        //right hip servo hole
        translate([-56/2+12/2, -56/2+1.5, 2+12/2])
        rotate([90, 0, 0])
        cylinder(d=12, h=4, center=true, $fn=64);
        
        translate([-56/2+12/2+6.30, -56/2+1.5, 2+12/2])
        rotate([90, 0, 0])
        cylinder(d=6.59, h=4, center=true, $fn=64);
    
    
        //left hip servo hole
        translate([56/2-12/2, -56/2+1.5, 2+12/2])
        rotate([90, 0, 0])
        cylinder(d=12, h=4, center=true, $fn=64);
        
        translate([56/2-12/2-6.30, -56/2+1.5, 2+12/2])
        rotate([90, 0, 0])
        cylinder(d=6.59, h=4, center=true, $fn=64);
        
        
        //head servo hole
        translate([0, 56/2-1.5, 14-8/2])
        rotate([90, 0, 0])
        cylinder(d=8, h=4, center=true, $fn=64);
        
        translate([0, 56/2-1.5, 14-8/2-3.7])
        rotate([90, 0, 0])
        cylinder(d=4.6, h=4, center=true, $fn=64);

        
        
        
        //servo carve outs for weight reduction
        translate([-15/2+76/2-6-15/2, -18/2+56/2-18/2-6, -0.5])
        roundedRect([15-rad, 18-rad, 3], rad);

        translate([-15/2-76/2+6+15/2, -18/2+56/2-18/2-6, -0.5])
        roundedRect([15-rad, 18-rad, 3], rad);
        
        translate([-18/2+76/2-13-18/2, -15/2-56/2+15/2+6, -0.5])
        roundedRect([18-rad, 15-rad, 3], rad);
        
        translate([-18/2-76/2+13+18/2, -15/2-56/2+15/2+6, -0.5])
        roundedRect([18-rad, 15-rad, 3], rad);
        
        
        translate([-26/2, -6.5/2+56/2-6.5/2-2.5-5.5, -0.5])
        roundedRect([26-rad+1, 13-rad+1, 3], rad-1);
        
        translate([-8/2, -20/2+56/2-10-2, -0.5])
        roundedRect([8-rad+1, 20-rad+1, 3], rad-1);
        
        translate([-25/2, -8/2+56/2-21-2, -0.5])
        roundedRect([25-rad+1, 8-rad+1, 3], rad-1);
        
        translate([-4/2, -11/2-56/2+11/2+6.5+3.5+2, -0.5])
        roundedRect([4-rad+1, 11-rad+1, 3], rad-1);
        
        
        //holes to attach
        translate([0,-2,1])
        cylinder(d=2, h=4, center=true, $fn=64);
        
        translate([0,-19.25,1])
        cylinder(d=2, h=4, center=true, $fn=64);
        
        translate([19,-2,1])
        cylinder(d=2, h=4, center=true, $fn=64);
        
        translate([-19,-2,1])
        cylinder(d=2, h=4, center=true, $fn=64);
        
        
        //right side slot for tab 
        translate([-78/2+1.5, 0, 2+12/2]) rotate([0, 0, 0]) {
            
            translate([-1.3/2, -13.5/2-2, -17/2])
            cube([1.3, 13.5, 17]);
            
            translate([2, -2, -3.5])
            rotate([0, 90, 0])
            cylinder(d=2, h=4, center=true, $fn=64);
            
            translate([2, -2, 3.5])
            rotate([0, 90, 0])
            cylinder(d=2, h=4, center=true, $fn=64);
        
        }

        //left side slot for tab 
        translate([78/2-1.5, 0, 2+12/2]) rotate([0, 0, 0]) {
            
            translate([-1.3/2, -13.5/2-2, -17/2])
            cube([1.3, 13.5, 17]);
            
            translate([-2, -2, -3.5])
            rotate([0, 90, 0])
            cylinder(d=2, h=4, center=true, $fn=64);
            
            translate([-2, -2, 3.5])
            rotate([0, 90, 0])
            cylinder(d=2, h=4, center=true, $fn=64);
        
        }
   
   
        //bottom slot for tab
        translate([0, -56/2+2.6, 2+12/2]) {
            
            translate([-12/2, -1.3/2-2, -17/2])
            cube([12, 1.3, 17]);
            
            translate([0, 0, -3.5])
            rotate([90, 0, 0])
            cylinder(d=2, h=4, center=true, $fn=64);
            
            translate([0, 0, 3.5])
            rotate([90, 0, 0])
            cylinder(d=2, h=4, center=true, $fn=64);
            
            
        }
        
        
        //top slot for tab
        translate([0, 56/2-2.6, 2+12/2]) {
            
            translate([-26/2, 1.3/2-1.1, -17/2])
            cube([26, 1.3, 17]);
            
            translate([9, 1, -3.5])
            rotate([90, 0, 0])
            cylinder(d=2, h=4, center=true, $fn=64);
            
            translate([9, 1, 3.5])
            rotate([90, 0, 0])
            cylinder(d=2, h=4, center=true, $fn=64);
            
            translate([-9, 1, -3.5])
            rotate([90, 0, 0])
            cylinder(d=2, h=4, center=true, $fn=64);
            
            translate([-9, 1, 3.5])
            rotate([90, 0, 0])
            cylinder(d=2, h=4, center=true, $fn=64);
            
            
        }
   
        
        /**
        //right side on-off switch 
        translate([-68/2+1.5, -50/2+12/2+3, 2+12/2]) rotate([0, -90, 0]) {
            
            translate([-4/2, -8/2, 0])
            //rotate([0, 90, 0])
            cube([4, 8, 4]);
            
            translate([-2/2, -6/2, 2])
            //rotate([0, 90, 0])
            cube([2, 6, 4]);
            
        }
        
        //left side on-off switch
        translate([68/2-1.5, -50/2+12/2+3, 2+12/2]) rotate([0, 90, 0]) {
        
            translate([-4/2, -8/2, 0])
            //rotate([0, 90, 0])
            cube([4, 8, 4]);
            
            translate([-2/2, -6/2, 2])
            //rotate([0, 90, 0])
            cube([2, 6, 4]);
    
            
        }
        **/
    }
    
    /**
    translate([-76/2+19.65/2, 56/2-servo_l-3, servo_l/2+2])
    rotate([0,90,180])
    servo_12g();
    
    translate([76/2-19.65/2, 56/2-servo_l-3, servo_l/2+2])
    rotate([0,-90,180])
    servo_12g();
    
    translate([16.6, -56/2+9.75, servo_l/2+2])
    rotate([0,-90,90])
    servo_12g();
    
    translate([-16.6, -56/2+9.75, servo_l/2+2])
    rotate([0,-90,90])
    rotate([0,0,180])
    servo_12g();
    
    
    translate([0, 56/2-6.75, servo5_l/2+1])
    rotate([-90,0,0])
    //rotate([0,0,180])
    servo_5g();
    
    **/
}



