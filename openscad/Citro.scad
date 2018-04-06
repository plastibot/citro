include <Config.scad>
use <servo_12g.scad>
use <servo_5g.scad>
use <electronics.scad>
use <Citro6_11.scad>
use <Citro6_12A.scad>
use <Citro6_12B.scad>
use <Citro6_13A.scad>
use <Citro6_13B.scad>
use <Citro6_20.scad>
use <Citro6_21.scad>
use <Citro6_22.scad>
use <Citro6_23.scad>
use <Citro6_25.scad>
use <Citro6_26.scad>
use <Citro6_27.scad>
use <Citro6_30.scad>
use <Citro6_31L.scad>
use <Citro6_31R.scad>
use <Citro6_32.scad>
use <Citro6_33.scad>
use <Citro6_40A.scad>
use <Citro6_40B.scad>
use <Citro6_40C.scad>
use <Citro6_40D.scad>
use <Citro6_41L.scad>
use <Citro6_41R.scad>
use <Citro6_42.scad>
use <Citro6_43L.scad>
use <Citro6_43R.scad>
use <Citro6_44L.scad>
use <Citro6_44R.scad>
use <Citro6_45L.scad>
use <Citro6_45R.scad>
use <Citro6_50.scad>
use <Citro6_51.scad>
use <Citro6_52.scad>
use <Citro6_53.scad>


//arm_L();
//arm_R();

translate([54, 0, 20])
rotate([180,0,90])
chest();

translate([0, -20, 0])
leg_L();

translate([0, 20, 0])
leg_R();


module chest(){
    Citro6_20();
    
    color("red")
    translate([0,0,2])
    Citro6_21();
    
    translate([0, 0, 14])
    Citro6_22();
    
    translate([0, 0, -20])
    Citro6_23();
    
    //color("blue", 0.5)
    //translate([0, 0, 14])
    //Citro6_25();
    
    
    //body servos
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
    
    //neck servo
    translate([0, 56/2-6.75, servo5_l/2+1])
    rotate([-90,0,0])
    //rotate([0,0,180])
    servo_5g();
    
    
    
    
    
    //translate([70/2, 56/2, 16])
    //on_off_switch();
    
    //head
    //translate([0, 51, 22])
    //rotate([0, 180, 0])
    //Citro6_50();
    
    //rotate([-90,0,0])
    //Citro6_53();
    /**
    //head servo
    translate([-2.5,-8,26])
    rotate([0, 90, 0])
    rotate([0, 0, 180])
    Citro6_53();
    
    //body servo
    translate([0,-30,20])
    rotate([90, 0, 0])
    rotate([0, 0, 0])
    Citro6_53();
    
    translate([0,-3,34.5])
    //rotate([0,0,180])
    pi_camera();
    
    **/
    
    translate([14.8, 30.25, 15.3])
    rotate([0,-90,0])
    rotate([0,0,90])
    Citro6_51();
    
    color("red")
    mirror()
    translate([13.9, 30.25, 15.3])
    //translate([0,0, 10])
    rotate([0, -90, 0])
    rotate([0, 0, 90])
    Citro6_52();
    
    
    //color("skyblue", 0.2)
    //translate([0, 50, 42])
    //rotate([180, 0, 180])
    //Citro6_50();
    
    //rotate([180, 0, 0])
    //Citro6_26();
    
    //Citro6_27();
    
    //translate([0,6,0])
    //Citro6_31();
    
    //translate([-3.5,30,11])
    //rotate([0,90,0])
    //Citro6_32();
    
}

module arm_L(){
    
    translate([0,0,0])
    Citro6_30();
    
    translate([-4, 0, 13])
    rotate([0,0,-90])
    rotate([90,0,0])
    servo_12g();

    translate([-4, 0, 37])
    rotate([0,0,90])
    rotate([-90,0,0])
    servo_12g();
    
    // Hand
    color("red", 0.6)
    translate([15,-0.5,-15.5])
    rotate([0,0,-90])
    rotate([90,0,0])
    Citro6_31L();

    translate([-18.5,0,1.5])
    rotate([0,0,90])
    rotate([90,0,0])
    Citro6_11();    
    
    //Shoulder
    translate([-18.5,5.5,45.5])
    rotate([0,0,-90])
    rotate([-90,-90,0])
    Citro6_12A();
    
    color("red", 0.6)
    translate([0.3,18,45.5])
    rotate([0,90,0])
    rotate([90,0,0])
    Citro6_13A();
    
    
}

module arm_R(){
    
    translate([0,0,0])
    Citro6_30();
    
    translate([-4, 0, 13])
    rotate([0,0,-90])
    rotate([90,0,0])
    servo_12g();

    translate([-4, 0, 37])
    rotate([0,0,90])
    rotate([-90,0,0])
    servo_12g();
    
    // Hand
    color("red", 0.6)
    translate([15,0.5,-15.5])  //only change is 0.5 vs -0.5 on y
    rotate([0,0,-90])
    rotate([90,0,0])
    Citro6_31R();

    translate([-18.5,0,1.5])
    rotate([0,0,90])
    rotate([90,0,0])
    Citro6_11();    
    
    //Shoulder
    translate([-18.5,-5.5,45.5]) //changed Y from 5.5 to -5.5
    rotate([0,0,-90])
    rotate([-90,90,0])  // changed Y from -90 to 90
    Citro6_12B();
    
    color("red", 0.6)
    translate([0.3,-18,45.5])  //changed Y from 18 to -18
    rotate([0,90,0])
    rotate([90,0,180]) //changed Z from 0 to 180
    Citro6_13B();
    
    
}

module leg_L(){
    
    //Hip
    translate([0,0,0])
    Citro6_40D();
    
    translate([-6.5, -4, 14])
    rotate([0,0,180])
    rotate([-90,0,0])
    servo_12g();
    
    translate([6.5, -2, 10.1])
    rotate([0,0,180])
    rotate([180,0,0])
    servo_12g();
    
    translate([12,-5.5,-5.3])
    rotate([90,0,180])
    rotate([-90,-90,0])
    Citro6_12A();
    
    color("red", 0.9)
    translate([24.5,-5.5,13.5])
    rotate([0,90,-90])
    rotate([90,-90,0])
    Citro6_13A();
    
    //Knee
    translate([-21,0,13])
    rotate([0,0,-90])
    Citro6_41L();
    
    translate([-34.5, -4.3, 26.1])
    rotate([0,0,0])
    rotate([90,0,0])
    servo_12g();
    
    color("red", 0.6)
    translate([-12,-18.8,20])
    rotate([0,-90,180])
    rotate([90,0,0])
    Citro6_11();
    
    translate([-49.5,-1.8,30.05])
    rotate([-90,-90,0])
    rotate([0,-90,0])
    Citro6_42();
    
    color("red", 0.6) 
    translate([-48.5,-19.1,17.6])
    rotate([-90,-90,0])
    Citro6_43L();
    
    color("orange", 0.6)    
    translate([-48.5,15.4,17.6])
    rotate([90,90,0])
    Citro6_44L();
    
    
    //Ankle
    translate([-69,-14,14])
    rotate([-90,0,0])
    Citro6_40B();
    
    translate([-62.5, -4, 14])
    rotate([0,0,180])
    rotate([-90,0,0])
    servo_12g();
    
    translate([-75.5, 0, 10.1])
    rotate([0,0,180])
    rotate([180,0,180])
    servo_12g();
    
    //Foot
    color("red", 0.6)    
    translate([-93.5,-8.1,16])
    rotate([0,90,0])
    rotate([0,0,-90])
    Citro6_45L();
    
    translate([-81,3.5,-5.3])
    rotate([0,0,-90])
    rotate([0,0,0])
    Citro6_12A();
    
    
}

module leg_R(){  //we need to change all below to a Right - current valus are a left leg
    
    //Hip
    translate([0,-4,0])  // changed Y from 0 to -4 (-4 units)
    rotate([0, 0, 180])  //rotated 180 on Z
    Citro6_40C();
    
    translate([-6.5, 0, 14])  // changed Y from -4 to 0 (+4 units)
    rotate([0,0,180])
    rotate([-90,0,180])  //changed Z from 0 to 180
    servo_12g();
    
    translate([6.5, -2, 10.1])
    rotate([0,0,180])
    rotate([180,0,180])  // changed z from 0 to 180
    servo_12g();
    
    translate([12,1.5,-5.3]) // changed y from -5.5 to 1.5   (7 units)
    rotate([90,0,180])
    rotate([-90,-90,0])
    Citro6_12B();
    
    color("red", 0.9)
    translate([24.5,1.5,13.5])
    rotate([0,90,-90])
    rotate([90,-90,0])
    Citro6_13B();
    
    //Knee
    translate([-21,-4,13])
    rotate([0,0,-90])
    Citro6_41R();
    
    translate([-34.5, 0.2, 26.1]) // changed Y from -4.3 to 0.2  (+4.5 units)
    rotate([0,0,180])  // changed Z from 0 to 180
    rotate([90,0,0])
    servo_12g();
    
    color("red", 0.6)
    translate([-12,14.7,20])  // changed Y from -18.8 to 14.7
    rotate([0,-90,180])  
    rotate([90,0,180])  // changed Z from 0 to 180
    Citro6_11();
    
    translate([-49.5,-1.8,30.05])
    rotate([-90,-90,0])
    rotate([0,-90,0])
    Citro6_42();
    
    color("red", 0.6) 
    translate([-48.5,15.4,17.6])  // changed Y from -19.1 to 15.4
    rotate([90,90,0])  // changed X and Y  from -90 to 90
    Citro6_43R();
    
    color("orange", 0.6)    
    translate([-48.5,-19.1,17.6])  // changed Y from 15.4 to -19.1
    rotate([-90,-90,0])  // changed X and Y from 90 to -90
    Citro6_44R();
    
    
    //Ankle
    translate([-69,-4,0]) // changed Z from 14 to 0 and Y from -14 to -4
    rotate([0,0,0])  //changed from -90 to 0
    Citro6_40A();
    
    translate([-62.5, 0, 14]) // changed Y from -4 to 0
    rotate([0,0,180])
    rotate([-90,0,180]) // changed Z from  0 to 180
    servo_12g();
    
    translate([-75.5, -4, 10.1])  //changed Y for 0 to -4
    rotate([0,0,180])
    rotate([180,0,0]) // changed Z from 180 to 0
    servo_12g();
    
    //Foot
    color("red", 0.6)    
    translate([-93.5,4.1,16])  // changed Y from -8.1 to 4.1
    rotate([0,90,0])
    rotate([0,0,-90])
    Citro6_45R();
    
    translate([-81,-7.5,-5.3])  // changed Y from 3.5 to -7.5
    rotate([0,0,-90])
    rotate([0,0,0])
    Citro6_12B();
    
    
}
    
