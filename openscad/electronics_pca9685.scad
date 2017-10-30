
$fn=100;


pca9685();


module header(pins, rows){
  color("darkgrey") cube([2.54*pins,2.54*rows,1.27]);
  
  color("gold")
  for(x=[0:pins-1],y=[0:rows-1])
    translate([x*2.54+(1.27+.6)/2,y*2.54+(1.27+.6)/2,-3.5]) cube([0.6,0.6,11.5]);
}


module pca9685(withHeader=true){  
  
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

