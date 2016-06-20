$fs = 0.01;
$fn = 200;

module screw() {
    cylinder(d=3.5,h=30);
    cylinder(d=7,h=3);
}

scale([0.5,0.5,0.5]) {
    difference() {
        union() {
            cylinder(h=40,r1=80,r2=70);
        }
        translate([0,0,-1]) cylinder(h=35,r1=65,r2=65);
        for(i=[0:10:360]){
            rotate([0,0,i]) translate([65,20,5]) cube([100,10,20]);
        }
            cylinder(r=60,h=100);
    }
}
difference() {
    translate([-10,30,13]) cube([20,18,7]);
    translate([-5,43,21]) rotate([180,0,0]) screw();
    translate([5,43,21]) rotate([180,0,0]) screw();
}    