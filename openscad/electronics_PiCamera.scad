
$fn=100;


pi_camera();



module pi_camera(){
    difference(){
        union(){
            color("limegreen")
            translate([-25.5/2, -24.5/2, 0])
            cube([25.5, 24.5, 0.9]);
            
            
            //camera sensor
            color("darkgrey")
            translate([-8.5/2, -8.5/2+2.4, 0.9])
            cube([8.5, 8.5, 3.5]);
            
            color("darkgrey")
            translate([0, 2.4, 0.9+3.5])
            cylinder(d=8, h=0.75, $fn=32);
        
            color("darkgrey")
            translate([0, 2.4, 0.9+3.5+0.75])
            cylinder(d=6, h=0.75, $fn=32);
            
            color("darkgrey")
            translate([0, 2.4, 0.9+3.5+0.75+0.75])
            cylinder(d1=2, d2=5, h=2, $fn=32);
            
            //sensor connector
            color("orange")
            translate([-8.5/2, -8.5/2+2.4-10.5, 0.9])
            cube([8.5, 10.5, 2.5]);
            
            //led
            color("white")
            translate([-20/2, -8.5/2+2.4-7, 0.9])
            cube([20, 3, 1]);            
            
            
            //connector
            color("white")
            translate([-20.8/2, -5.5+24/2, -2.4])
            cube([20.8, 5.5, 2.4]);
            
            
    
        }
          
        translate([-21/2,-20/2,-1]) cylinder(d=2.1, h=3);
        translate([-21/2, 20/2-7.5,-1]) cylinder(d=2.1, h=3);
        translate([21/2,-20/2,-1]) cylinder(d=2.1, h=3);
        translate([21/2, 20/2-7.5,-1]) cylinder(d=2.1, h=3);
    }
    
    
}

