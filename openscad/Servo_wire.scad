include <config.scad>
use <servo_12g.scad>


//servo_12g();
servo_wire();

wire_l = 130+0.1;
wire_d = 1.5;

module servo_wire(){
    
    difference(){
        
        union(){
            
            color("brown")
            translate([-1.5,0,0])
            rotate([90,0,0])
            cylinder(d=wire_d, h=wire_l);
            
            color("red")
            translate([0,0,0])
            rotate([90,0,0])
            cylinder(d=wire_d, h=wire_l);
            
            color("yellow")
            translate([1.5,0,0])
            rotate([90,0,0])
            cylinder(d=wire_d, h=wire_l);
            
            color("black")
            translate([-7.5/2,-14/20,-2.5/2])
            //rotate([90,0,0])
            cube([7.5, 14, 2.5]);
            
            color("silver")
            translate([-1.5/2-2.54,7.25,-0.2])
            //rotate([90,0,0])
            cube([1.25, 2.5, 1.5]);
            
            color("silver")
            translate([-1.5/2,7.25,-0.2])
            //rotate([90,0,0])
            cube([1.25, 2.5, 1.5]);
 
            color("silver") 
            translate([-1.5/2+2.54,7.25,-0.2])
            //rotate([90,0,0])
            cube([1.25, 2.5, 1.5]);
            
        }
        
        translate([-1/2,-0.2,-1/2])
        //rotate([90,0,0])
        #cube([1, 14, 1]);
        
        translate([-1/2-2.54,-0.2,-1/2])
        //rotate([90,0,0])
        cube([1, 14, 1]);
        
        translate([-1/2+2.54,-0.2,-1/2])
        //rotate([90,0,0])
        cube([1, 14, 1]);
        
        //translate([-1.5/2-2.54,7.25,0.45])
        ////rotate([90,0,0])
        //cube([1.25, 2.5, 1]);
        
        //translate([-1.5/2,7.25,0.45])
        ////rotate([90,0,0])
        //cube([1.25, 2.5, 1]);
        
        //translate([-1.5/2+2.54,7.25,0.45])
        ////rotate([90,0,0])
        //cube([1.25, 2.5, 1]);
        
    }
    
    
}