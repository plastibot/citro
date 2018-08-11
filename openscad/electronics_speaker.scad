
$fn=100;


speaker();

module speaker(){
    
    //ear speakers
    //color("green", 0.4)
    translate([19.9, -2.5, 27]) 
    union(){
        color("black")
        intersection(){
        
     
            cube([4, 15.5, 15.5], center=true);
            
            rotate([45, 0, 0])
            cube([4, 17.5, 17.5], center=true);
            
        }
        
        color("black")
        translate([0, 0, -7.5])
        cube([4, 13, 4.6], center=true);
        
        //connectors
        color("silver")
        translate([2, 4, -8])
        rotate([0, -10, 0])
        cube([1, 1.5, 3], center=true);
        
        color("silver")
        translate([2, -4, -8])
        rotate([0, -10, 0])
        cube([1, 1.5, 3], center=true);
        
        //speaker magnet
        color("black")
        translate([1.9, 0, 0])
        rotate([0, 90, 0])
        cylinder(d=11, h=0.3, $fn=32);
        
        //speaker cone
        color("silver")
        difference(){
            
            translate([-2.1, 0, 0])
            rotate([0, 90, 0])
            cylinder(d=13, h=0.2, $fn=32);
            
            translate([-2.2, 0, 0])
            rotate([0, 90, 0])
            cylinder(d=10, h=0.3, $fn=32);
            
            
        }
            
        
    }
    
    
}


