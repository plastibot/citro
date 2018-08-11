
$fn=100;


imu();

module imu(){
    
        difference(){
        union(){
            color("limegreen")
            translate([-20.5/2, -15.5/2, 0])
            cube([20.5, 15.5, 0.9]);
            
            
            //mpu6050
            color("black")
            translate([-4.5/2, -3.5/2, 0.9])
            cube([4.5, 4.5, 0.5]);
            

            
            
            //led
            //color("white")
            //translate([-20/2, -8.5/2+2.4-7, 0.9])
            //cube([20, 3, 1]);            
            
            
            //connector
            //color("white")
            //translate([-20.8/2, -5.5+24/2, -2.4])
            //cube([20.8, 5.5, 2.4]);
            
            translate([-4*2.54-0.5,-16.5/2,0.45])
            color("gold")
            for(x=[0:8-1],y=[0:1-1])
                translate([x*2.54+(1.27+.6)/2,y*2.54+(1.27+.6)/2,-0.5]) cube([1.6,1.6,1]);
            
            
    
        }
          
       
        translate([-15/2, 25/2-7.5,-1]) cylinder(d=3, h=3);
        translate([15/2, 25/2-7.5,-1]) cylinder(d=3, h=3);
        
        translate([-4*2.54-0.5,-15.5/2,0.45])
        for(x=[0:8-1],y=[0:1-1])
                translate([x*2.54+(1.27+1.2)/2,y*2.54+(1.27)/2,-0.75]) cube([1,1,1.5]);
        

    }
    
}


