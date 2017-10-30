include <Config.scad>
use <servo_12g.scad>
use <servo_5g.scad>
use <electronics.scad>


Citro6_32();


module Citro6_32(){

echo("mount_y: ", mount_y);
    
    mount_x = servo_l + 2;
    mount_y = servo_w + 2;
    mount_round = 1;
    servo_tol = 0.2;
    

difference() {
        union() {
            translate([-mount_x/2,-mount_y/2,-body_h/2])
            roundedRect([mount_x-mount_round,mount_y-mount_round,body_h+6], mount_round);
            
            translate([0, -6, body_h-4.4])
            cylinder(d=4, h=2, $fn=64);
            
            hull(){
                //bracket to attach fingers
                translate([-10, 4, 6.4])
                cube([20, 9, 10]); 
                
                //translate([4, 1.3, -6.33])
                //cube([2, 9, mount_y-0.95]);
                
            }
            
            //thumb finger
            hull(){
                translate([-5, 30, -1.4])
                rotate([0,90,0])
                cylinder(d=8, h=10);
                
                translate([-7, 10, -10.4])
                cube([14, 12, 10]);
                
            }
            
        }
    translate([0,0,4])
    cube([servo_l, servo_w, body_h], center=true);
        
    translate([0,-9-8,1.5])
    cube([servo_l, servo_w, body_h+4], center=true);
        
    
    
    translate([0,0,0.25])
    //translate([(mount_x-servo_y)/2+servo_y-4*servo_tol,(mount_y-servo_l)/2,2])
    rotate([0,180,0])
    servo_12g(false);
        
    translate([0,9+1,6.8])
    cube([4, 5, 9], center=true);
        
    
    
    ////translate([(mount_x-servo_y)/2+servo_y-4*servo_tol,(mount_y-servo_l)/2,2])
    //translate([8,servo_l+2,2])
    //rotate([0,0,-90])
    //servo_60g(false);
    
    
    //holes to attach bracket
    translate([4.5, 0.5, 3.5]) rotate([0, 90, 0]) {
        
            translate([-22/2, 26/2-7.5,-1]) 
            cylinder(d=2, h=25);
                        
            translate([25/2, 26/2-7.5,-1]) 
            cylinder(d=2, h=25);
    }


    
}
}

