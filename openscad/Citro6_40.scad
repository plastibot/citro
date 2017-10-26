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


Citro6_40();



module Citro6_40(){

translate([15,15,0])
union(){
    
    import("MiniPlan6_40A.stl", convexity=3);
    
    //color("red")
    translate([-6.5, 1, 24.2])
    cube([9,26,0.4], center=true);
    
    //color("red")
    translate([6.5, -10.2, 13])
    cube([9,0.4,26], center=true);
    
    
}

translate([-15,15,0])
union(){
    
    import("MiniPlan6_40B.stl", convexity=3);
    
    //color("red")
    translate([6.5, 1, 24.2])
    cube([9,26,0.4], center=true);
    
    //color("red")
    translate([-6.5, -10.2, 13])
    cube([9,0.4,26], center=true);
    
    
}

translate([15,-15,0])
union(){
    
    import("MiniPlan6_40D.stl", convexity=3);
    
    //color("red")
    translate([6.5, -1, 24.2])
    cube([9,26,0.4], center=true);
    
    //color("red")
    translate([-6.5, 10.2, 13])
    cube([9,0.4,26], center=true);
    
    
}

translate([-15,-15,0])
union(){
    
    import("MiniPlan6_40C.stl", convexity=3);
    
    //color("red")
    translate([-6.5, -1, 24.2])
    cube([9,26,0.4], center=true);
    
    //color("red")
    translate([6.5, 10.2, 13])
    cube([9,0.4,26], center=true);
    
    
}

}

