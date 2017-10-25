//servo_12g();

//use<hub_mount.scad>
//use<MCAD/nuts_and_bolts.scad>
$fn = 24;
//x,y,z => l,w,h

tap_r = 0.85;
hole_r = 1.0;

servo_l         = 12;  // was 12
servo_w         = 24;  // was 23
body_h          = 20.80;

servo_h         = 27; //not used in code was 27

wing_w          = 4.5;
wing_h          = 2.33;
wing_place      = 16.3;   
hole_offset     = 2.2;    //not checked
mount_hole_r    = 2/2;
mount_slot      = 1;

servo_ww        = servo_w+wing_w*2; // not used in code but is handy number

hub_h           = 4;
small_hub_r     = 6.15/2;  
horn_r          = 4.66/2;
horn_h          = 3;

wire_l          = 4;
wire_w          = 1.5;
wire_h          = 1;
wire_place      = 4.8;

servo_full_w    = servo_w+wing_w*2;
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