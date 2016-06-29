/*
Jaeho's 3D printing
Pac-Man
*/

module mymodule(myradius){
    difference(){
        sphere(myradius, $fn=100);
        translate([-myradius,myradius,0]){rotate([90,0,0]){cylinder(r=myradius,h=myradius*2,$fn=3);}}
    }
}

mymodule(10);