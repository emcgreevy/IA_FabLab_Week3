difference(){
minkowski(){
cylinder(r1=40, r2=50, h=30, $fn=4, center=true);
sphere(h=3, r=3);
}
opening();
}

module opening(){
translate([0,0,5])
cylinder(r1=35, r2=45, h=30, $fn=4, center=true);
}