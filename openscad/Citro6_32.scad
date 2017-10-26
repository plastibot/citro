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


Citro6_32();

module Citro6_32(){

echo("mount_y: ", mount_y);
    
    mount5_x = servo5_l + 2;
    mount5_y = servo5_w + 2;
    mount_round = 1;
    servo_tol = 0.2;
    

difference() {
        union() {
            translate([-mount5_x/2,-mount5_y/2,-body5_h/2+1])
            roundedRect([mount5_x-mount_round,mount5_y-mount_round,body5_h+5], mount_round);
            
            translate([0, -5, body5_h-1.25])
            cylinder(d=4, h=2, $fn=64);
            

            
        }
    translate([0,0,4])
    cube([servo5_l, servo5_w, body5_h], center=true);
        
    translate([0,-9-5,1.5])
    cube([servo5_l, servo5_w, body5_h+4], center=true);
        
    
    
    translate([0,0,0.25])
    //translate([(mount5_x-servo5_y)/2+servo5_y-4*servo_tol,(mount5_y-servo5_l)/2,2])
    rotate([0,180,0])
    servo_5g(false);
        
    translate([0,9+1,6.8])
    cube([4, 5, 9], center=true);
        
    
    
    ////translate([(mount5_x-servo_y)/2+servo_y-4*servo_tol,(mount5_y-servo_l)/2,2])
    //translate([8,servo_l+2,2])
    //rotate([0,0,-90])
    //servo_60g(false);
    



    
}
}
