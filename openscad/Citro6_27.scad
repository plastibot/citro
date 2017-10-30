include <Config.scad>
use <servo_12g.scad>
use <servo_5g.scad>
use <electronics.scad>

$fn = 100;


Citro6_27();


module Citro6_27x4(){
    
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


module Citro6_27(){
    difference(){
        
        translate([0,0,0])
        cylinder(d=5, h=2);
        
        translate([0,0,-1])
        cylinder(d=2.6, h=4);
        
    }
}