/*
Jaeho's 3D printing
The ghost of 'pac-man'
*/

module mymodule(myradius, myheight){
    union(){
        difference(){
            union(){
                color("Blue",1) cylinder(r=myradius,h=myheight,$fn=100);
                translate([0,0,myheight]){color("Blue",1){resize(newsize=[myradius*2,myradius*2,myradius*6/5]) sphere(myradius,$fn=100);}}
            }
            union(){
                for(i=[0:9]){
                    polyhedron(
                        [
                        [0,0,0],
                        [myradius*3*cos(360*i/10),myradius*3*sin(360*i/10),0],
                        [myradius*3*cos(360*(2*i+1)/20),myradius*3*sin(360*(2*i+1)/20),myheight*4/7],
                        [myradius*3*cos(360*(i+1)/10),myradius*3*sin(360*(i+1)/10),0]],
                        [
                        [0,3,2],
                        [0,1,3],
                        [0,2,1],
                        [1,2,3]]);
                }
                translate([0,0,-0.01]){
                    for(i=[0:9]){
                        polyhedron(
                            [
                            [0,0,0],
                            [myradius*3*cos(360*i/10),myradius*3*sin(360*i/10),0],
                            [myradius*3*cos(360*(2*i+1)/20),myradius*3*sin(360*(2*i+1)/20),myheight*4/7],
                            [myradius*3*cos(360*(i+1)/10),myradius*3*sin(360*(i+1)/10),0]],
                            [
                            [0,3,2],
                            [0,1,3],
                            [0,2,1],
                            [1,2,3]]);
                    }
                }
            }
    }
    translate([0,0,myheight*4/5]){rotate([90,0,0]){color("Black",1) cylinder(h=myradius*11/10,r=myradius*7/50,$fn=100);}}
    translate([0,0,myheight*4/5]){rotate([90,0,45]){color("Black",1) cylinder(h=myradius*11/10,r=myradius*7/50,$fn=100);}}
    translate([0,0,myheight*4/5]){rotate([90,0,0]){color("White",1) cylinder(h=myradius*26/25,r=myradius/5,$fn=100);}}
    translate([0,0,myheight*4/5]){rotate([90,0,45]){color("White",1) cylinder(h=myradius*26/25,r=myradius/5,$fn=100);}}
    }
}

mymodule(1,2.5);