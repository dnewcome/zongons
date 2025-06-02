$fn=3;
//difference(){
circle(d=40);

for(i=[1:3]){
       #rotate(i*360/3+60) translate([10,-10])square([2,20]);
}
//}