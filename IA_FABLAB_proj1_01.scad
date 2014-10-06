module bloop(){
minkowski(){
rotate([20,0,0]){
cube([20,7,20], center=true);
}//end of rotate
	 sphere(r=1,h=1);
}//end of minkowski
}//end of bloop (inside part)

module danger(){
rotate([50,0,0]){
rotate([0,90,0])
cylinder(r1=20, r2=20, h=20, $fn=3);
}//end of rotate
}//end of danger (triangle)


difference(){
rotate([20,0,0])
cube([20,20,25], center=true);//main clip

translate([0,1.8,-5])
bloop();//inside part
}

translate([-10,-17,-11.5])
danger();//not janky triangle

rotate([20,180,0]){
translate([-10,-30,10])
danger();
}//end of rotate (this constructs the rhombus)