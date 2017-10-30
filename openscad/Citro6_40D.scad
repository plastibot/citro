include <Config.scad>
use <servo_12g.scad>
use <servo_5g.scad>
use <electronics.scad>


scale(1.01)
Citro6_40D();



module Citro6_40D(){

    union(){
        
        import("../Miniplan6/MiniPlan6_40D.stl", convexity=3);
        
        //color("red")
        translate([6.5, -1, 24.2])
        cube([9,26,0.4], center=true);
        
        //color("red")
        translate([-6.5, 10.2, 13])
        cube([9,0.4,26], center=true);
        
        
    }

}

