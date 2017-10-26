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


Citro6_25();

module Citro6_25(){
    
        
difference(){
                
      union(){
               
          translate([0,11.75, 18])
          cube([42,1.5,32], center=true);
        
          translate([0,9.5, 21])
          cube([30,5,26], center=true);
                   
       }
        
        //tray cavity
        translate([0,16, 18.5])
        cube([27,15,34], center=true);
        
        //translate([-22.5,18.5, 15.5])
        //cube([5,15,31], center=true);
        
        //translate([22.5,18.5, 15.5])
        //cube([5,15,31], center=true);
        
        //translate([0,20.5, 15.5])
        //cube([30,24,31], center=true);
        
       //tray
       
      
        
        //slots for pins
        translate([-11.43,13.5, 18.0])
        cube([2.6,15,20.4], center=true);
        
        translate([11.43,13.5, 18.0])
        cube([2.6,15,20.4], center=true);
        
        //translate([0,30, 21])
        //rotate([35, 0, 0])
        //cube([70,24,28], center=true);
        
        //translate([0,16.5, 8])
        //cube([75,7.5,9], center=true);
        
        
        //screw holes for dc-dc converter
        
        translate([-36/2, 10, 24])
        rotate([90, 0, 0])
        cylinder(d=2, h=10, center=true, $fn=64);
        
        translate([36/2, 10, 7])
        rotate([90, 0, 0])
        cylinder(d=2, h=10, center=true, $fn=64);
        
        translate([36/2, 10, 24])
        rotate([90, 0, 0])
        cylinder(d=2, h=10, center=true, $fn=64);
        
        translate([-36/2, 10, 7])
        rotate([90, 0, 0])
        cylinder(d=2, h=10, center=true, $fn=64);
        
    }
    
}
