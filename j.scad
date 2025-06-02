sides=5;
$fn=sides;
difference(){
circle(d=60);

for(i=[1:sides]){
       rotate(i*360/sides) translate([15,0])square([4.5,60]);
       rotate(i*360/sides) translate([18,6])square([10,60]);

}
}