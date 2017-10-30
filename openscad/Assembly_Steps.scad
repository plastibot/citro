include <servo_12g.scad>
include <servo_5g.scad>
use <electronics.scad>


//step_2b();


// set to 10 FPS at 200 steps
if ($t<0.1) step_1();
if ($t>=0.1 && $t<0.2) step_1a();
if ($t>=0.2 && $t<0.3) step_1b();
if ($t>=0.3 && $t<0.4) step_2();
if ($t>=0.4 && $t<0.5) step_2a();
if ($t>=0.5 && $t<0.6) step_2b();
if ($t>=0.6 && $t<0.7) step_2c();
if ($t>=0.7 && $t<0.8) step_2d();
if ($t>=0.8 && $t<0.9) step_3();
if ($t>=0.9) step_3a();
    
     








module step_1(){
    
    import("../stl/Citro6_20.stl", convexity=3);
    
    //translate([-56/2+19.65/2-$t*10, 56/2-servo_l-3, servo_l/2+2])
    //rotate([0,90,180])
    //servo_12g();
    
    //translate([56/2-19.65/2+$t*10, 56/2-servo_l-3, servo_l/2+2])
    //rotate([0,-90,180])
    //servo_12g();
    
    translate([16.6, -36/2+9.75-$t*100, servo_l/2+2])
    rotate([0,-90,90])
    servo_12g();
    
    translate([-16.6, -36/2+9.75-$t*100, servo_l/2+2])
    rotate([0,-90,90])
    rotate([0,0,180])
    servo_12g();
    
    
    //translate([0, 56/2-6.75, servo5_l/2+1])
    //rotate([-90,0,0])
    ////rotate([0,0,180])
    //servo_5g();
    
}

module step_1a(){
    
    import("../stl/Citro6_20.stl", convexity=3);
    
    translate([-56/2+19.65/2-($t-0.1)*100, 56/2-servo_l-3, servo_l/2+2])
    rotate([0,90,180])
    servo_12g();
    
    translate([56/2-19.65/2+($t-0.1)*100, 56/2-servo_l-3, servo_l/2+2])
    rotate([0,-90,180])
    servo_12g();
    
    translate([16.6, -56/2+9.75, servo_l/2+2])
    rotate([0,-90,90])
    servo_12g();
    
    translate([-16.6, -56/2+9.75, servo_l/2+2])
    rotate([0,-90,90])
    rotate([0,0,180])
    servo_12g();
    
    
    //translate([0, 56/2-6.75, servo5_l/2+1])
    //rotate([-90,0,0])
    ////rotate([0,0,180])
    //servo_5g();
    
}

module step_1b(){
    
    import("../stl/Citro6_20.stl", convexity=3);
    
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
    
    
    translate([0, 36/2-6.75+($t-0.2)*100, servo5_l/2+1])
    rotate([-90,0,0])
    //rotate([0,0,180])
    servo_5g();
    
}

module step_2(){
    
    import("../stl/Citro6_20.stl", convexity=3);
    
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
    
    color("red")
    translate([0,0,22-($t-0.3)*200])
    import("../stl/Citro6_21.stl", convexity=3);
    
}

module step_2a(){
    
    rotate([0+($t-0.4)*1800, 0, 0]) {
        
        import("../stl/Citro6_20.stl", convexity=3);
        
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
        
        color("red")
        translate([0,0,2])
        import("../stl/Citro6_21.stl", convexity=3);
    
    }
    
}

module step_2b(){
    
    rotate([180, 0, 0]) {
        
        import("../stl/Citro6_20.stl", convexity=3);
        
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
        
        color("red")
        translate([0,0,2])
        import("../stl/Citro6_21.stl", convexity=3);
        
        color("black")
        translate([-19, -2, -40+($t-0.5)*300])
        union(){
            cylinder(r1=1.3, r2=2, h=1, $fn=32);
            cylinder(r=0.8, h=7, $fn=32);
        }
        
        color("black")
        translate([19, -2, -40+($t-0.5)*300])
        union(){
            cylinder(r1=1.3, r2=2, h=1, $fn=32);
            cylinder(r=0.8, h=7, $fn=32);
        }
        
        color("black")
        translate([0, -19.25, -40+($t-0.5)*300])
        union(){
            cylinder(r1=1.3, r2=2, h=1, $fn=32);
            cylinder(r=0.8, h=7, $fn=32);
        }
    
    }
    
}

module step_2c(){
    
    rotate([180, 0, 0]) {
        
        import("../stl/Citro6_20.stl", convexity=3);
        
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
        
        color("red")
        translate([0,0,2])
        import("../stl/Citro6_21.stl", convexity=3);
        
        color("black")
        translate([-19, -2, -7+($t-0.6)*30])
        union(){
            cylinder(r1=1.3, r2=2, h=1, $fn=32);
            cylinder(r=0.8, h=7, $fn=32);
        }
        
        color("black")
        translate([19, -2, -7+($t-0.6)*30])
        union(){
            cylinder(r1=1.3, r2=2, h=1, $fn=32);
            cylinder(r=0.8, h=7, $fn=32);
        }
        
        color("black")
        translate([0, -19.25, -7+($t-0.6)*30])
        union(){
            cylinder(r1=1.3, r2=2, h=1, $fn=32);
            cylinder(r=0.8, h=7, $fn=32);
        }
    
    }
    
}

module step_2d(){
    
    rotate([180+($t-0.7)*1800, 0, 0]) {
        
        import("../stl/Citro6_20.stl", convexity=3);
        
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
        
        color("red")
        translate([0,0,2])
        import("../stl/Citro6_21.stl", convexity=3);
        
        color("black")
        translate([-19, -2, -40+39])
        union(){
            cylinder(r1=1.3, r2=2, h=1, $fn=32);
            cylinder(r=0.8, h=7, $fn=32);
        }
        
        color("black")
        translate([19, -2, -40+39])
        union(){
            cylinder(r1=1.3, r2=2, h=1, $fn=32);
            cylinder(r=0.8, h=7, $fn=32);
        }
        
        color("black")
        translate([0, -19.25, -40+39])
        union(){
            cylinder(r1=1.3, r2=2, h=1, $fn=32);
            cylinder(r=0.8, h=7, $fn=32);
        }
    
    }
    
}

module step_3(){
    
    import("../stl/Citro6_20.stl", convexity=3);
    
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
    
    color("red")
    translate([0,0,2])
    import("../stl/Citro6_21.stl", convexity=3);
    
    color("yellow")
    translate([0, 0, 34-($t-0.8)*200])
    import("../stl/Citro6_22.stl", convexity=3);
    
}

module step_3a(){
    
    import("../stl/Citro6_20.stl", convexity=3);
    
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
    
    color("red")
    translate([0,0,2])
    import("../stl/Citro6_21.stl", convexity=3);
    
    color("yellow")
    translate([0, 0, 14])
    import("../stl/Citro6_22.stl", convexity=3);
    
    color("black")
    translate([-19, -2, -40+($t-0.9)*300])
    union(){
        cylinder(r1=1.3, r2=2, h=1, $fn=32);
        cylinder(r=0.8, h=7, $fn=32);
    }
    
    color("black")
    translate([19, -2, -40+($t-0.9)*300])
    union(){
        cylinder(r1=1.3, r2=2, h=1, $fn=32);
        cylinder(r=0.8, h=7, $fn=32);
    }
    
    color("black")
    translate([0, -19.25, -40+($t-0.9)*300])
    union(){
        cylinder(r1=1.3, r2=2, h=1, $fn=32);
        cylinder(r=0.8, h=7, $fn=32);
    
    

    }
    
}

module step_4(){
    
    import("../stl/Citro6_20.stl", convexity=3);
    
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
    
    color("red")
    translate([0,0,2])
    import("../stl/Citro6_21.stl", convexity=3);
    
    color("yellow")
    translate([0, 0, 14])
    import("../stl/Citro6_22.stl", convexity=3);
    
    translate([0,-11,29-$t*10]) // set steps=10 and FPS=10
    rotate([0,0,0])
    pi_zero();
    
}

module step_5(){
    
    translate([0,-15,37-$t*10])
    rotate([0,0,0])
    pca9685();
    
    color("yellow")
    translate([0, -3, 14])
    import("../stl/Citro6_27.stl", convexity=3);
    
    citro6_29();
    
    color("blue")
    translate([-(72.5-6-$t*10)/2,-(25.4-6)/2,25]) 
    //citro6_29();
    import("../stl/Citro6_29.stl", convexity=3);
    
    translate([-(62.5-6)/2, (25.4-6)/2,0]) citro6_29();
    translate([ (62.5-6)/2,-(25.4-6)/2,0]) citro6_29();
    translate([ (62.5-6)/2, (25.4-6)/2,0]) citro6_29();
    
    
}

module step_6(){
    
    import("../stl/Citro6_20.stl", convexity=3);
    
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
    
    color("red")
    translate([0,0,2])
    import("../stl/Citro6_21.stl", convexity=3);
    
    color("yellow")
    translate([0, 0, 14])
    import("../stl/Citro6_22.stl", convexity=3);
    
    translate([0,-11,19])
    rotate([0,0,0])
    pi_zero();
    
    color("yellow")
    translate([0, -3, 14])
    import("../stl/Citro6_27.stl", convexity=3);
    
    
}

