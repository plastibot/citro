/* (c) 2016++ by Saarbastler 
**  https://github.com/saarbastler/library.scad
**
** Raspberry PI model library for generating cases etc.
*/
$fn=100;

module header(pins, rows)
{
  color("darkgrey") cube([2.54*pins,2.54*rows,1.27]);
  
  for(x=[0:pins-1],y=[0:rows-1])
    translate([x*2.54+(1.27+.6)/2,y*2.54+(1.27+.6)/2,-3.5]) cube([0.6,0.6,11.5]);
}


module pi_zero()
{
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
    
    translate([-65/2+3.5,-30/2+3.5,-1]) #cylinder(d=2.75, h=3);
    translate([-65/2+3.5, 30/2-3.5,-1]) #cylinder(d=2.75, h=3);
    translate([65/2-3.5,-30/2+3.5,-1]) #cylinder(d=2.75, h=3);
    translate([65/2-3.5, 30/2-3.5,-1]) #cylinder(d=2.75, h=3);
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
    color("darkgrey") translate([-2.4,10.1,0]) cube([2.4,11,1]);
  }
}



module pca9685(withHeader=true)
{  
  
    // PCB
    color("limegreen") difference()
    {
      translate([0,0,0]) hull()
      {
        translate([-(62.5-6)/2,-(25.4-6)/2,0]) cylinder(r=3, h=1.4 );
        translate([-(62.5-6)/2, (25.4-6)/2,0]) cylinder(r=3, h=1.4 );
        translate([ (62.5-6)/2,-(25.4-6)/2,0]) cylinder(r=3, h=1.4 );
        translate([ (62.5-6)/2, (25.4-6)/2,0]) cylinder(r=3, h=1.4 );
      }
      
      translate([-55.9/2,-18.8/2,-1]) cylinder(d=2.75, h=3);
      translate([-55.9/2, 18.8/2,-1]) cylinder(d=2.75, h=3);
      translate([55.9/2,-18.8/2,-1]) cylinder(d=2.75, h=3);
      translate([55.9/2, 18.8/2,-1]) cylinder(d=2.75, h=3);
    } 
    
    
    // capacitor
    color("silver")
    translate([-(62.5/2)+17.1,(25.4-8.3)/2,1.4])
    cylinder(d=8.3, h=12.7);
    
    //power connector
    color("blue")
    translate([-(62.5/2)+25.1+2.54*2,(25.4-8.3)/2,1.4])
    cube([2.54*2,4,8]);
    
    // Header top
    translate([-(62.5/2)+5.65,-25.4/2,1.4])
    header(4,3);
    
    translate([2.25,-25.4/2,1.4])
    header(4,3);
    
    translate([-2.25-2.54*4,-25.4/2,1.4])
    header(4,3);
    
    translate([62.5/2-5.65-2.54*4,-25.4/2,1.4])
    header(4,3);
    
    translate([62.5/2,-25.4/2+5.08,1.4])
    rotate([0,0,90])
    header(6,1);
    
    translate([-62.5/2+2.54,-25.4/2+5.08,1.4])
    rotate([0,0,90])
    header(6,1);

  
}

module dc_dc(){
    
    // PCB
    color("limegreen") difference()
    {
      translate([0,0,0]) hull()
      {
        translate([-(24.5-6)/2,-(48-6)/2,0]) cylinder(r=3, h=1.4 );
        translate([-(24.5-6)/2, (48-6)/2,0]) cylinder(r=3, h=1.4 );
        translate([ (24.5-6)/2,-(48-6)/2,0]) cylinder(r=3, h=1.4 );
        translate([ (24.5-6)/2, (48-6)/2,0]) cylinder(r=3, h=1.4 );
      }
      
      translate([0,0,-1]) {
            
            //translate([-17/2,-35/2,0])
            //cylinder(d=3.15, h=2.5);
            
            translate([-17/2,35/2, 0])
            cylinder(d=3.15, h=2.5);
            
            translate([17/2,-35/2, 0])
            cylinder(d=3.15, h=2.5);
            
            //translate([17/2,35/2, 0])
            //cylinder(d=3.15, h=2.5); 
          
      }


    } 
    
    
    // capacitors
    color("darkblue")
    translate([-(24.5/2)+12.1,(48-8)/2,1.4])
    cylinder(d=8, h=10);
    
    color("darkblue")
    translate([-(24.5/2)+12.1,-(48-8)/2,1.4])
    cylinder(d=8, h=10);
    
    //toroid
    
    difference(){
        
        color("orange")
        translate([(24.5/2)-22.1+9,(48-30)/2,1.4])
        cylinder(d=12, h=7.6);
        
        color("orange")
        translate([(24.5/2)-22.1+9,(48-30)/2,0.5])
        cylinder(d=6, h=11);

        
    }
    
    
    //potentiometer
    color("blue")
    translate([24.5/2-2,-48/2+9,1.4])
    rotate([0,0,90])
    cube([5,10,11]);
    
    
    //IC
    color("black")
    translate([24.5/2-8,-48/2+15,1.4])
    rotate([0,0,90])
    cube([11,11,5]);
    
    
}


module on_off_switch(){
    
    union(){
        
        color("silver")
        translate([-8/2, -4/2, 0])
        cube([8, 4, 3.8]);
        
        color("black")
        translate([-1.5/2, -1.5/2, 3.8])
        cube([1.5, 1.5, 3]);
        
        color("silver")
        translate([-0.5/2, -0.5/2, -3.2])
        cube([0.5, 0.5, 3.2]);
        
        color("silver")
        translate([-0.5/2-2.5, -0.5/2, -3.2])
        cube([0.5, 0.5, 3.2]);
        
        color("silver")
        translate([-0.5/2+2.5, -0.5/2, -3.2])
        cube([0.5, 0.5, 3.2]);
        
        
        
        
    }
    
}


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

//on_off_switch();

//pi_zero();

//translate ([0,100,0])
//pca9685();

//dc_dc();

//pi_camera();