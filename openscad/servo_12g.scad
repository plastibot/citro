include <config.scad>


servo_12g();


$fn = 24;
//x,y,z => l,w,h


module servo_12g() {
  
    translate([-servo_l/2, -servo_w/2, -body_h/2-hub_h/2-horn_h/2]) {
    
        color("white") 
        translate([servo_l/2,servo_l/2,body_h+hub_h])
        cylinder(r=horn_r,h=horn_h);
        
        color("deepSkyBlue",.7) //deepSkyBlue
        union() {
            cube([servo_l,servo_w,body_h]);
            translate([servo_l/2,servo_l/2,body_h])
            cylinder(r=servo_l/2,h=hub_h);
            translate([servo_l/2,servo_l/2+6.30,body_h])
            cylinder(r=small_hub_r,h=hub_h);
            
        }
    }
}

module roundedRect(size, radius)
{
x = size[0];
y = size[1];
z = size[2];

translate([x/2+radius/2, y/2+radius/2, 0]){
linear_extrude(height=z)
hull()
{
// place 4 circles in the corners, with the given radius
translate([(-x/2)+(radius/2), (-y/2)+(radius/2), 0])
circle(r=radius);

translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
circle(r=radius);

translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
circle(r=radius);

translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
circle(r=radius);
}
}
}