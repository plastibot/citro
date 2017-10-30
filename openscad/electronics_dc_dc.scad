
$fn=100;


dc_dc();


module header(pins, rows){
  color("darkgrey") cube([2.54*pins,2.54*rows,1.27]);
  
  color("gold")
  for(x=[0:pins-1],y=[0:rows-1])
    translate([x*2.54+(1.27+.6)/2,y*2.54+(1.27+.6)/2,-3.5]) cube([0.6,0.6,11.5]);
}


module dc_dc(){
    
    // PCB
    color("limegreen") difference(){
        translate([0,0,0]) hull(){
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


