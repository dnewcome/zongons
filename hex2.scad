// side length is 34

sides=5;
$fn=sides;
difference(){
circle(d=68);

for(i=[1:sides]){
       rotate(i*360/sides) translate([34-15,0])square([6,60]);
       rotate(i*360/sides) translate([34-12,6])square([10,60]);

}
}