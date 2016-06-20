$fn = 360;

module nut() {
    cylinder(d=3,h=30);
    cylinder(d=6.5,h=3, $fn=6);
}

difference() {
    union() {
        difference() {
            cylinder(d=148,h=20);
            translate([0,0,-1]) cylinder(d=144,h=30);
            translate([-100,50,-1]) cube([200,100,100]);
            for (i = [12*6:12:360-12*6]) {
                 rotate([0,90,i+90]) translate([-10,0,71])cylinder(d=10,h=30);
            }
        }
        rotate([0,0,400]) translate([71,-5,0]) cube([2,10,20]);
        rotate([0,0,140]) translate([71,-5,0]) cube([2,10,20]);
    }
    rotate([0,90,400]) translate([-15,0,69]) nut();
    rotate([0,90,400]) translate([-5,0,69]) nut();
    rotate([0,90,140]) translate([-15,0,69]) nut();
    rotate([0,90,140]) translate([-5,0,69]) nut();
}