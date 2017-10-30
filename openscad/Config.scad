


//Parameters for 12g servo
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

rad = 2;




//Parameters for 5g servo

servo5_l         = 8.6; 
servo5_w         = 18.6; 
body5_h          = 14.65;


hub5_h = 2.15;
small_hub5_r = 4.6/2;  
horn5_r = 4.66/2;
horn5_h = 3;

servo5_h         = body5_h+hub5_h+horn5_h;

mount_x = servo5_l + 2;
mount_y = servo5_w + 2;
mount_round = 1;
servo_tol = 0.2;
servo5_x     = servo5_l + servo_tol*2; //~12
servo5_y     = servo5_w + servo_tol*8; //~23