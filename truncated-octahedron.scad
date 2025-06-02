// side length is 80

module hex_face() {
sides=6;
$fn=sides;
difference(){
circle(d=80);

for(i=[1:sides]){
       rotate(i*360/sides) translate([25,0])square([6,60]);
       rotate(i*360/sides) translate([28,6])square([30,60]);
    }
}
}

// side length is 34

module sq_face() {
d=56.565;
sides=4;
$fn=sides;
difference(){
circle(d=d);

for(i=[1:sides]){
       rotate(i*360/sides) translate([d/2-15,0])square([4,60]);
       rotate(i*360/sides) translate([d/2-12,6])square([10,60]);

}
}
}



hex_face();

translate([100, 0])
sq_face();