//servo_5g();

//use<hub_mount.scad>
//use<MCAD/nuts_and_bolts.scad>
$fn = 24;
//x,y,z => l,w,h

tap_r = 0.85;
hole_r = 1.0;

servo5_l         = 8.6; 
servo5_w         = 18.6; 
body5_h          = 14.65;



hub5_h = 2.15;
small_hub5_r = 4.6/2;  
horn5_r = 4.66/2;
horn5_h = 3;

servo5_h         = body5_h+hub5_h+horn5_h;

module servo_5g() {
  
    translate([-servo5_l/2, -servo5_w/2, -body5_h/2-hub5_h/2-horn5_h/2]) {
    
        color("white") 
        translate([servo5_l/2,servo5_l/2,body5_h+hub5_h])
        cylinder(r=horn5_r,h=horn5_h);
        
        color("deepSkyBlue",.7) //deepSkyBlue
        union() {
            cube([servo5_l,servo5_w,body5_h]);
            translate([servo5_l/2,servo5_l/2,body5_h])
            cylinder(r=servo5_l/2,h=hub5_h);
            translate([servo5_l/2,servo5_l/2+3.7,body5_h])
            cylinder(r=small_hub5_r,h=hub5_h);
            
        }
    }
}

