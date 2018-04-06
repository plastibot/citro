include <Config.scad>
use <servo_12g.scad>
use <servo_5g.scad>
use <electronics.scad>



Citro6_21();


module Citro6_21(){

    difference(){

        union(){
            
            translate([-3.5, -22, 0])
            //cube([7, 22, 12]);
            roundedRect([7-rad+1, 22-rad+1, 12], rad-1);
            
            
            translate([-13.5, -4, 0])
            //cube([14, 22, 12]);
            roundedRect([27-rad+1, 14.5-rad+1, 12], rad-1);
            
            translate([-22, -4, 0])
            //cube([44, 4.58, 12]);
            roundedRect([44-rad+1, 4.58-rad+1, 12], rad-1);
            
            translate([-13.5, 9, 0])
            //cube([7, 22, 12]);
            roundedRect([8-rad+1, 5-rad+1, 12], rad-1);
            
            translate([5.5, 9, 0])
            //cube([7, 22, 12]);
            roundedRect([8-rad+1, 5-rad+1, 12], rad-1);
            
            
            //translate([-2.5+7.5, -4, 11])
            //cube([5, 5.25, 3]);
            
            translate([7.5, -1.38, 11.5])
            rotate([90, 0, 0])
            cylinder(d=5, h=5.25, $fn=16, center=true);
            
            //translate([-2.5-7.5, -4, 11])
            //cube([5, 5.25, 3]);
            
            translate([-7.5, -1.38, 11.5])
            rotate([90, 0, 0])
            cylinder(d=5, h=5.25, $fn=16, center=true);

            
        }
        
        translate([-4/2, -13/2-56/2+13/2+6.5+3.5+2, -0.5])
        roundedRect([4-rad+1, 13-rad+1, 13], rad-1);
        
        translate([-23/2, -7.5/2+8/2+1, -0.5])
        roundedRect([23-rad+1, 7.5-rad+1, 13], rad-1);
        
        //holes to attach to body
        //translate([0,-2,6])
        //cylinder(d=2, h=14, center=true, $fn=64);
        
        translate([0,-19.25,6])
        cylinder(d=2, h=14, center=true, $fn=64);
        
        translate([19,-2,6])
        cylinder(d=2, h=14, center=true, $fn=64);
        
        translate([-19,-2,6])
        cylinder(d=2, h=14, center=true, $fn=64);
        
        //holes to attach imu
        translate([-7.5,-2,11.5])
        rotate([90,0,0])
        cylinder(d=2, h=14, center=true, $fn=64);
        
        translate([7.5,-2,11.5])
        rotate([90,0,0])
        cylinder(d=2, h=14, center=true, $fn=64);
        
        //slot for servo wire
        translate([0,10,11.5])
        rotate([90,0,0])
        cylinder(d=3, h=14, center=true, $fn=64);
        
        //holes to access imu screws
        translate([-7.5,10,11.5])
        rotate([90,0,0])
        cylinder(d=5, h=14, center=true, $fn=64);
        
        translate([7.5,10,11.5])
        rotate([90,0,0])
        cylinder(d=5, h=14, center=true, $fn=64);
        
        
    }

}


