/* (c) 2016++ by Saarbastler 
**  https://github.com/saarbastler/library.scad
**
** Raspberry PI model library for generating cases etc.
*/
$fn=100;


pi_zero();

module header(pins, rows) {
  color("darkgrey") cube([2.54*pins,2.54*rows,1.27]);
  
  color("gold")  
  for(x=[0:pins-1],y=[0:rows-1])
    translate([x*2.54+(1.27+.6)/2,y*2.54+(1.27+.6)/2,-3.5]) cube([0.6,0.6,11.5]);
}


module pi_zero() {
  // PCB
  color("limegreen") difference()
  {
    hull()
    {
      translate([-(65-6)/2,-(30-6)/2,0]) cylinder(r=3, h=1.4 );
      translate([-(65-6)/2, (30-6)/2,0]) cylinder(r=3, h=1.4 );
      translate([ (65-6)/2,-(30-6)/2,0]) cylinder(r=3, h=1.4 );
      translate([ (65-6)/2, (30-6)/2,0]) cylinder(r=3, h=1.4 );
    }
    
    translate([-65/2+3.5,-30/2+3.5,-1]) cylinder(d=2.75, h=3);
    translate([-65/2+3.5, 30/2-3.5,-1]) cylinder(d=2.75, h=3);
    translate([65/2-3.5,-30/2+3.5,-1]) cylinder(d=2.75, h=3);
    translate([65/2-3.5, 30/2-3.5,-1]) cylinder(d=2.75, h=3);
  }
  
  // Header
  translate([-10*2.54,30/2-2.54-3.5,1.4])
    header(20,2);
  
  translate([-65/2,-30/2,1.4])  
  {
    color("silver") 
    {
      
      // micro USB
      translate([41-8/2,-1.5,0]) cube([8,6,2.6]);
      translate([54-8/2,-1.5,0]) cube([8,6,2.6]);        
      
      // HDMI
      translate([6.9,-1.5,0]) cube([13,7,3]);
    }
    
    color("darkgrey") 
    {
      
      // Camera
      translate([64-4/2,7.1,0]) cube([4,16,2.5]);
    }
    
    // Micro SD Card
    color("silver") translate([0,8.6,-0]) cube([13,14,1.5]);    
    color("black") translate([-2.4,10.1,0]) cube([2.4,11,1]);
  }
}





