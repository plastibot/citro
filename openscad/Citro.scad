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


//Citro6_20();

//color("red")
//translate([0,0,2])
//Citro6_21();

//translate([0, 0, 14])
//Citro6_22();

//Citro6_23();

//color("blue", 0.5)
//translate([0, 0, 14])
//rotate([0, 180, 0])
//Citro6_25();

//translate([70/2, 56/2, 16])
//on_off_switch();

//Citro6_40();

//rotate([-90,0,0])
//Citro6_50();
/**
//head servo
translate([-2.5,-8,26])
rotate([0, 90, 0])
rotate([0, 0, 180])
Citro6_50();

//body servo
translate([0,-30,20])
rotate([90, 0, 0])
rotate([0, 0, 0])
Citro6_50();

translate([0,-3,34.5])
//rotate([0,0,180])
pi_camera();

**/

//translate([-14.8, -23, 10])
//rotate([0,90,0])
//rotate([0,0,90])
//Citro6_51();

//color("red")
//mirror()
//translate([-14, -23, 10])
////translate([0,0, 10])
//rotate([0, -90, 0])
//rotate([0, 0, 90])
//Citro6_52();


//color("skyblue", 0.2)
//translate([0, 50, 42])
//rotate([180, 0, 180])
//Citro5_40_mod();

//rotate([180, 0, 0])
//Citro6_27();

//Citro6_29();

//translate([0,6,0])
//Citro6_31();

//translate([-3.5,30,11])
//rotate([0,90,0])
//Citro6_32();

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
    
    
}



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
        
        translate([-4/2, -11/2-56/2+11/2+6.5+3.5+2, -0.5])
        roundedRect([4-rad+1, 11-rad+1, 13], rad-1);
        
        translate([-23/2, -7.5/2+8/2+1, -0.5])
        roundedRect([23-rad+1, 7.5-rad+1, 13], rad-1);
        
        //holes to attach to body
        translate([0,-2,6])
        cylinder(d=2, h=14, center=true, $fn=64);
        
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
        
        translate([-4/2, -11/2-56/2+11/2+6.5+3.5+2, -0.5])
        roundedRect([4-rad+1, 11-rad+1, 3], rad-1);
        
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
        translate([0,-2,1])
        cylinder(d=2, h=4, center=true, $fn=64);
        
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
            #cube([5.1, 13.2, 9], center=true);
            
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
            #cube([5.1, 13.2, 9], center=true);

            
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


module Citro6_23(){
    
    union(){
    
        difference(){
            
            union(){
                
                hull(){
                
                    translate([-76/2, -56/2, 19])
                    roundedRect([76-rad, 56-rad, 1], rad);
                    
                    translate([-76/2, -56/2, 5])
                    roundedRect([76-rad, 56-rad, 1], rad);
                        
                    translate([-56/2, -50/2-3, 0])
                    roundedRect([56-rad, 50-rad, 1], rad);
                    
                    translate([-72/2, 0, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    translate([72/2, 0, 0])
                    cylinder(r=rad, h=20, $fn=32);

                    translate([-72/2, 10, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    translate([72/2, 10, 0])
                    cylinder(r=rad, h=20, $fn=32);
                    
                    //translate([-74/2, -10, 5])
                    //cylinder(r=rad, h=15, $fn=32);
                    
                    //translate([74/2, -10, 5])
                    //cylinder(r=rad, h=15, $fn=32);

                    
                }
            
                
               
                //right side tab
                translate([-76/2, 0, 10+20/2]) rotate([0, 0, 0]) difference() {
                    union() {
                        
                        translate([-2/2, -12.5/2-2, 0])
                        cube([2, 12.5, 5.85]);
                        
                        translate([0, -2, 0])
                        rotate([90,0,0])
                        cylinder(r=1, h=12.5, $fn=32, center=true);
        
                        translate([0, -2, 5.85])
                        rotate([90,0,0])
                        cylinder(r=1, h=12.5, $fn=32, center=true);  
          
                        translate([0, -12.5/2-2, 0])
                        cube([1, 12.5, 6.85]);              
                    }
                    
                    //translate([1, -14/2-2, 0])
                    //cube([2, 14, 7.85]);
                    
                    translate([0, -2, 4])
                    rotate([0, 90, 0])
                    cylinder(d=2, h=4, center=true, $fn=64);
                    
                }
                
            
            
            
                //left side tab
                translate([76/2, 0, 10+20/2]) rotate([0, 0, 0]) difference() {
                    union() {
                        
                        translate([-2/2, -12.5/2-2, 0])
                        cube([2, 12.5, 5.85]);
                        
                        translate([0, -2, 0])
                        rotate([90,0,0])
                        cylinder(r=1, h=12.5, $fn=32, center=true);
        
                        translate([0, -2, 5.85])
                        rotate([90,0,0])
                        cylinder(r=1, h=12.5, $fn=32, center=true);
                  
                        translate([-1, -12.5/2-2, 0])
                        cube([1, 12.5, 6.85]);      
                        
                    }
                    
                    //translate([-3, -14/2-2, 0])
                    //cube([2, 14, 7.85]);
                    
                    translate([-0, -2, 4])
                    rotate([0, 90, 0])
                    #cylinder(d=2, h=4, center=true, $fn=64);
                    
                }
                
                
                //bottom tab
                translate([0, -56/2+2, 10+20/2]) difference(){
                    union(){
                
                        translate([-11/2, -2/2-2, 0])
                        cube([11, 2, 5.85]);
                        
                        translate([0, -2, 0])
                        rotate([0,90,0])
                        cylinder(r=1, h=11, $fn=32, center=true);
        
                        translate([0, -2, 5.85])
                        rotate([0,90,0])
                        cylinder(r=1, h=11, $fn=32, center=true);
                        
                        translate([-11/2, -2, 0])
                        cube([11, 1, 6.85]);
                        
                        
                    }
                    
                    
                //translate([-12.5/2, -1, 0])
                //cube([12.5, 2, 7.85]);
                
                translate([0, -2, 4])
                rotate([90, 0, 0])
                #cylinder(d=2, h=4, center=true, $fn=64);
                
                
            }
                
            /**
                //top tab
                translate([0, 56/2+2, 10+20/2]) difference(){
                    union(){
                
                        translate([-73/2, -2/2-2, 0])
                        cube([73, 2, 6.85]);
                        
                        translate([0, -2, 0])
                        rotate([0,90,0])
                        cylinder(r=1, h=73, $fn=32, center=true);
        
                        translate([0, -2, 5.85])
                        rotate([0,90,0])
                        cylinder(r=1, h=73, $fn=32, center=true);
                        
                        translate([-73/2, -2, 0])
                        cube([73, 1, 5.85]);
                        
                        
                    }
                    
                    
                translate([-57/2, -3.1, -1])
                cube([57, 2.2, 8.85]);
                
                //translate([0, -2, 4])
                //rotate([90, 0, 0])
                //#cylinder(d=2, h=4, center=true, $fn=64);
                    
                translate([32.5, -2, 4])
                rotate([90, 0, 0])
                cylinder(d=2, h=4, center=true, $fn=64);
                            
                translate([-32.5, -2, 4])
                rotate([90, 0, 0])
                #cylinder(d=2, h=4, center=true, $fn=64);
                
                
            }
            **/
            
            }
            
            //carveout
                
            translate([-72/2, -52/2 ,6])
            //cube([72, 52, 18.1]);
            roundedRect([72-rad, 51-rad, 19.1], rad);
            
            hull(){
                
                translate([-72/2, -52/2, 19])
                roundedRect([72-rad, 52-rad, 1], rad);
                
                translate([-72/2, -52/2, 5])
                roundedRect([72-rad, 52-rad, 1], rad);
                    
                translate([-52/2, -46/2-3, 1])
                roundedRect([52-rad, 46-rad, 1], rad);
                
                translate([-68/2, 0, 1])
                cylinder(r=rad, h=20, $fn=32);
                
                translate([68/2, 0, 1])
                cylinder(r=rad, h=20, $fn=32);

                translate([-68/2, 10, 1])
                cylinder(r=rad, h=20, $fn=32);
                
                translate([68/2, 10, 1])
                cylinder(r=rad, h=20, $fn=32);
                
                //translate([-70/2, -10, 5])
                //cylinder(r=rad, h=15, $fn=32);
                
                //translate([70/2, -10, 5])
                //cylinder(r=rad, h=15, $fn=32);

            
            }
            
            //hole for the microUSB connector
            translate([-8/2+18.6, -52/2-4 ,1])
            cube([8, 5, 5]);
            
            /**
            //carve out on low tab to allow power card to be flush
            intersection(){
                translate([-22/2, -52/2-2 ,1])
                cube([22, 5, 3]);

                translate([-22/2, -52/2+1 ,-1])
                rotate([60, 0, 0])
                cube([22, 5, 3]);
                   
            }
            **/
            
            //wall thinning for weight reduction
            
            translate([-58/2, 56/2-20-1, 6])
            roundedRect([58-rad, 20-rad, 19.1], rad);
            
            translate([76/2-22-1, 56/2-20-2, 6])
            roundedRect([22-rad, 20-rad, 19.1], rad);
    
            translate([-76/2+1, 56/2-20-2, 6])
            roundedRect([22-rad, 20-rad, 19.1], rad);
            
            translate([76/2-28-1, -56/2+1, 6])
            roundedRect([28-rad, 18-rad, 19.1], rad);
            
            translate([-76/2+1, -56/2+1, 6])
            roundedRect([28-rad, 18-rad, 19.1], rad);
       
            
        }
    
        
        /**
        rotate([-90, 0, 0]) translate([0,0.4,-28]) color("yellow") difference(){
            
            translate([-53.4/2, -5.7/2-5.7/2-0.4, 0])
            roundedRect([53.4-rad+1, 5.7-rad+1, 15], rad-1);
            
            translate([-51.4/2, -3.7/2-2.3/2-2.3, 0])
            #roundedRect([51.4-rad+1, 3.7-rad+1, 18], rad-1);
            
            translate([-49/2, -3/2-3/2-3.3-0.3, -1])
            cube([49, 2.5, 17]);
            //roundedRect([50-rad+1, 2.3-rad+1, 15], rad-1);
            
        }
        **/
        
    }
   
}



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
module Citro6_40(){

translate([15,15,0])
union(){
    
    import("MiniPlan6_40A.stl", convexity=3);
    
    color("red")
    translate([-6.5, 1, 24.2])
    cube([9,26,0.4], center=true);
    
    color("red")
    translate([6.5, -10.2, 13])
    cube([9,0.4,26], center=true);
    
    
}

translate([-15,15,0])
union(){
    
    import("MiniPlan6_40B.stl", convexity=3);
    
    color("red")
    translate([6.5, 1, 24.2])
    cube([9,26,0.4], center=true);
    
    color("red")
    translate([-6.5, -10.2, 13])
    cube([9,0.4,26], center=true);
    
    
}

translate([15,-15,0])
union(){
    
    import("MiniPlan6_40D.stl", convexity=3);
    
    color("red")
    translate([6.5, -1, 24.2])
    cube([9,26,0.4], center=true);
    
    color("red")
    translate([-6.5, 10.2, 13])
    cube([9,0.4,26], center=true);
    
    
}

translate([-15,-15,0])
union(){
    
    import("MiniPlan6_40C.stl", convexity=3);
    
    color("red")
    translate([-6.5, -1, 24.2])
    cube([9,26,0.4], center=true);
    
    color("red")
    translate([6.5, 10.2, 13])
    cube([9,0.4,26], center=true);
    
    
}

}

module Citro6_50(){

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

module Citro5_40_mod(){
    difference(){
        
        union(){
            
            translate([0,0,0])
            //color("red")
            import("MiniPlan5_40.stl", convexity=3);
            
            translate([0, 7, 34]) hull(){
                
                translate([-15, 0, 0]) rotate([0, 0, 0]) cylinder(d=3, h=12, $fn=32);
                translate([15, 0, 0]) rotate([0, 0, 0]) cylinder(d=3, h=12, $fn=32);
                translate([11, 4, 0]) rotate([11, -10, 0]) cylinder(d=3, h=12, $fn=32);
                translate([-11, 4, 0]) rotate([11, 10, 0]) cylinder(d=3, h=12, $fn=32);
                
            
            }
            
            //was 35
            translate([0, 1, 34]) {
            
            translate([-31/2,-26/2,-1]) 
            cylinder(d=5, h=5);
            
            translate([-31/2, 26/2-7.5,-1]) 
            cylinder(d=5, h=5);
            
            translate([31/2,-26/2,-1]) 
            cylinder(d=5, h=5);
            
            translate([31/2, 26/2-7.5,-1]) 
            cylinder(d=5, h=5);
            
        }

            
            //new wider ears to put speakers
            //color("green", 0.4)
            translate([19.9, -2.5, 25.5])
            rotate([0, 90, 0])
            cylinder(d1=26, d2=19, h=3.2, $fn=64);
            
            //color("green", 0.4)
            translate([-19.9, -2.5, 25.5])
            rotate([0, -90, 0])
            cylinder(d1=26, d2=19, h=3.2, $fn=64);
            
            
            //color("orange", 0.3)
            translate([0, -3.2, 37.5])
            cube([25, 22, 4], center=true);
            
        }
        
        translate([-25,-20,41.75])
        cube([50, 40, 20]);
        
        translate([-26/2,-26/2-2,29])
        cube([26, 26, 7]);
        
        translate([0,-3,34.5])
        //rotate([0,0,180])
        pi_camera();
        
        
        translate([0, -3, 36]) {
            
            translate([-21/2,-20/2,-1]) 
            #cylinder(d=2, h=5);
            
            translate([-21/2, 20/2-7.5,-1]) 
            #cylinder(d=2, h=5);
            
            translate([21/2,-20/2,-1]) 
            #cylinder(d=2, h=5);
            
            translate([21/2, 20/2-7.5,-1]) 
            #cylinder(d=2, h=5);
            
        }
        
        translate([0, 1, 33]) {
            
            translate([-31/2,-26/2,-1]) 
            #cylinder(d=2, h=8);
            
            translate([-31/2, 26/2-7.5,-1]) 
            #cylinder(d=2, h=8);
            
            translate([31/2,-26/2,-1]) 
            #cylinder(d=2, h=8);
            
            translate([31/2, 26/2-7.5,-1]) 
            #cylinder(d=2, h=8);
            
        }
        
        
        //cavity for ear speakers
        //color("green", 0.4)
        translate([19.9, -2.5, 27]) 
        union(){
            intersection(){
            
         
                cube([4, 15.5, 15.5], center=true);
                
                rotate([45, 0, 0])
                cube([4, 17.5, 17.5], center=true);
                
            }
                
            translate([0, 0, -7.5])
            cube([4, 13, 4.6], center=true);
            
            translate([1.9, 0, 0])
            rotate([0, 90, 0])
            cylinder(d=11, h=2, $fn=32);
            
            
        }
        
        
        translate([-19.9, -2.5, 27]) 
        union(){
            intersection(){
            
         
                cube([4, 15.5, 15.5], center=true);
                
                rotate([45, 0, 0])
                cube([4, 17.5, 17.5], center=true);
                
            }
                
            translate([0, 0, -7.5])
            cube([4, 13, 4], center=true);
            
            translate([-1.9, 0, 0])
            rotate([0, -90, 0])
            cylinder(d=11, h=2, $fn=32);
            
            
        }
        
        

        
            
        
        
        
    }

}
module Citro6_52(){
    
    difference(){
        union(){
            
            translate([-2, 0, 0])
            cube([4, 10, servo5_h+6]);
            
            translate([0, 0, 0])
            cube([4, 10, 3]);
            
            translate([0, 0, 0]) hull(){
                
                translate([20, 16, 0]) 
                cylinder(d=10, h=3, $fn=32);
                
                translate([4,0,0]) 
                cube([1.5, 10, 3]);
    
            }
        }
        
        translate([20, 16, 1]) 
        cylinder(d=4, h=4, $fn=32);
        
        /**
        translate([2, 10/2, servo5_h/2+3])
        #hull(){
            
            translate([0, -5.3/2-1, -5.3/2-1])
            rotate([0, 90, 0])
            cylinder(d=2, h=2, $fn=32);
            
            translate([0, 5.3/2+1, 5.3/2+1])
            rotate([0, 90, 0])
            cylinder(d=2, h=2, $fn=32);
            
        }
        **/ 
            
        translate([0, -5.3/2+10/2, -13/2+servo5_h/2+4])
        cube([2.1, 5.6, 13]);
        
        translate([0, -9.4/2+10/2, -5.3/2+servo5_h/2+4])
        cube([2.1, 9.4, 5.6]);
        
        translate([-2.1, 10/2, servo5_h/2+4])
        rotate([0, 90, 0])
        cylinder(d=5.84, h=4, $fn=32);
        
        translate([0, 10/2, servo5_h/2+4])
        rotate([22.5, 0, 0])
        rotate([0, 90, 0])
        cylinder(d=9.54, h=4, $fn=8);
        
        translate([0, 2, servo5_h+1]) 
        cylinder(d=2, h=6.1, $fn=32);
        
        translate([0, 8, servo5_h+1]) 
        cylinder(d=2, h=6.1, $fn=32);
        
    }
}

module Citro6_27(){
    
    difference(){
        
        union(){
        
            translate([0,-8,6]) {
                    
                hull(){
                    translate([-65/2+3.5,-30/2+3.5,0])
                    cylinder(d=5, h=5);
                    
                    translate([-65/2+3.5, 30/2-3.5,0])
                    cylinder(d=5, h=5);
                   
                }
            
                hull(){
            
                    translate([65/2-3.5,-30/2+3.5,0])
                    cylinder(d=5, h=5);
                    
                    translate([65/2-3.5, 30/2-3.5,0])
                    cylinder(d=5, h=5);  
                }  
                
                //hooks
                translate([-55.9/2,-30/2+3.5-3,2.5])
                cube([4, 3, 5], center=true);
                //cylinder(d=5, h=5);
                
                translate([-55.9/2,-30/2+3.5-4,1])
                cube([4, 1, 8], center=true);
                
                hull(){
                
                    translate([-55.9/2,-30/2+3.5-4,-2])
                    #cube([4, 1, 2], center=true);
                    
                    translate([-55.9/2,-30/2+3.5-3.5,-2.5])
                    #cube([4, 2, 1], center=true);
                    
                    
                }   
                
                
                translate([55.9/2,-30/2+3.5-3,2.5])
                cube([4, 3, 5], center=true);
                //cylinder(d=5, h=5);
                
                translate([55.9/2,-30/2+3.5-4,1])
                cube([4, 1, 8], center=true);
                
                hull(){
                
                    translate([55.9/2,-30/2+3.5-4,-2])
                    #cube([4, 1, 2], center=true);
                    
                    translate([55.9/2,-30/2+3.5-3.5,-2.5])
                    #cube([4, 2, 1], center=true);
                    
                    
                }
                    
            }
            
            //mouting posts for PCA9685 card
            translate([0,-12,6]) {
                        
                    translate([-55.9/2,-18.8/2,0])
                    cylinder(d=4.5, h=5);
                    
                    translate([-55.9/2, 18.8/2,0])
                    cylinder(d=4.5, h=5);
                    
                    translate([55.9/2,-18.8/2,0])
                    cylinder(d=4.5, h=5);
                    
                    translate([55.9/2, 18.8/2,0])
                    cylinder(d=4.5, h=5);
                
                    
            }
                    
        }   
        
        //screw holes for PCA9685 card
        translate([0,-12,6]) {
                        
            translate([-55.9/2,-18.8/2,-1])
            cylinder(r=tap_r, h=8);
            
            translate([-55.9/2, 18.8/2,-1])
            cylinder(r=tap_r, h=8);
            
            translate([55.9/2,-18.8/2,-1])
            cylinder(r=tap_r, h=8);
            
            translate([55.9/2, 18.8/2,-1])
            cylinder(r=tap_r, h=8);
        
        }
        
        //screw holes for pi_zero
        translate([0,-8,5]) {
            
            //translate([-58/2,-23/2,0])
            //cylinder(r=hole_r, h=15);
            
            translate([-58/2, 23/2,0])
            cylinder(r=hole_r, h=15);
            
            //translate([58/2,-23/2,0])
            //cylinder(r=hole_r, h=15);
            
            translate([58/2, 23/2,0])
            cylinder(r=hole_r, h=15);
            
        }
        
        translate([0,-8,8]) {
            
            translate([-58/2,-23/2,-2.1])
            cylinder(r=1.9, h=2);
            
            translate([-58/2,-23/2+1.9,-2.1+1])
            cube([3.8, 3.2, 2], center=true);
            
            translate([-58/2, 23/2,0])
            cylinder(r=1.9, h=15);
            
            translate([58/2,-23/2,-2.1])
            cylinder(r=1.9, h=2);
            
            translate([58/2,-23/2+1.9,-2.1+1])
            cube([3.8, 3.8, 2], center=true);   
            
            translate([58/2, 23/2,0])
            cylinder(r=1.9, h=15);
            
        }
        
        translate([-70/2,-18/2-8,5.9])
        cube([70,18, 3]);
        
    }
    
            //translate([0,-12,11])
            //rotate([0,0,180])
            //pca9685();
    
            //translate([0,-8,5])
            //rotate([0,0,0])
            //pi_zero();  
           

    
}

module Citro6_51(){
    
    difference(){
        union(){
            
            translate([-2, 0, 0])
            cube([6, 10, 3]);
            
            //translate([20, 16, 0]) 
            //cylinder(d=12, h=3, $fn=32);
            
            translate([0, 0, 0]) hull(){
                
                translate([20, 16, 0]) 
                cylinder(d=10, h=3, $fn=32);
                
                translate([4,0,0]) 
                cube([1.5, 10, 3]);
    
            }
        }
        
        translate([20, 16, -1]) 
        cylinder(d=5.84, h=4, $fn=32);
        
        translate([20, 16, 1]) 
        rotate([0, 0, 22.5])
        cylinder(d=6.54, h=4, $fn=8);
        
        //rotate([0,0,10])    
        translate([20-3.3/2, 16-8/2, 1])
        //rotate([0,0,10])
        cube([3.3, 8, 2.1]);
        
        translate([20-8/2, 16-3.3/2, 1])
        cube([8, 3.3, 2.1]);
        
        //translate([-0.1, 10/2, servo5_h/2+3])
        //rotate([0, 90, 0])
        //#cylinder(d=5.84, h=4, $fn=32);
        
        translate([0, 2, -0.1]) 
        cylinder(d=2, h=4.1, $fn=32);
        
        translate([0, 8, -0.1]) 
        cylinder(d=2, h=4.1, $fn=32);
        
    }
}

module Citro6_29(){
    
    difference(){
        
        translate([0,0,0])
        cylinder(d=5, h=2);
        
        translate([0,0,-1])
        cylinder(d=2.6, h=4);
        
    }
    
}

module Citro6_31(){

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
    #servo_12g(false);
        
    translate([0,9+1,6.8])
    cube([4, 5, 9], center=true);
        
    
    
    ////translate([(mount_x-servo_y)/2+servo_y-4*servo_tol,(mount_y-servo_l)/2,2])
    //translate([8,servo_l+2,2])
    //rotate([0,0,-90])
    //servo_60g(false);
    
    
    //holes to attach bracket
    translate([4.5, 0.5, 3.5]) rotate([0, 90, 0]) {
        
            translate([-22/2, 26/2-7.5,-1]) 
            #cylinder(d=2, h=25);
                        
            translate([25/2, 26/2-7.5,-1]) 
            #cylinder(d=2, h=25);
    }


    
}
}

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
    #servo_5g(false);
        
    translate([0,9+1,6.8])
    cube([4, 5, 9], center=true);
        
    
    
    ////translate([(mount5_x-servo_y)/2+servo_y-4*servo_tol,(mount5_y-servo_l)/2,2])
    //translate([8,servo_l+2,2])
    //rotate([0,0,-90])
    //servo_60g(false);
    



    
}
}
