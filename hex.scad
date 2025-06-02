sides=6;
$fn=sides;
difference(){
circle(d=80);

for(i=[1:sides]){
       rotate(i*360/sides) translate([25,0])square([6,60]);
       rotate(i*360/sides) translate([28,6])square([30,60]);

}
}