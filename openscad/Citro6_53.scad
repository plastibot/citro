include <Config.scad>
use <servo_12g.scad>
use <servo_5g.scad>
use <electronics.scad>


rotate([0, 90, 0])
rotate([0, 0, -90])
Citro6_53();


module Citro6_53(){

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
            
            //bracket to attach to head
            translate([5.25, 1.3, -14])
            cube([2, 9, mount5_y+14.25]); 
            
            translate([4, 1.3, -6.33])
            cube([2, 9, mount5_y-0.95]);
            
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
    
    translate([4.5, 0.5, 3.5]) rotate([0, 90, 0]) {
        
            translate([-31/2, 26/2-7.5,-1]) 
            cylinder(d=2, h=5);
                        
            translate([31/2, 26/2-7.5,-1]) 
            cylinder(d=2, h=5);
    }


    
}
}
