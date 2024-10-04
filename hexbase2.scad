use <hex.scad>
	
module delle () {
	rotate ([90,0,0])
	translate([0,0,80])
	difference () {
		sphere(r=100);
		translate([0,0,-80])
		cylinder(r=100,h=200);
		
		}
	
	
}
	



union () {
translate ([0,0,-143])
rotate([0,180,0])
difference () {
hexbody(rb=387,rsp=20,re=50,hb=287);
	translate([0,0,-10])
		hexbody(rb=377,rsp=20,re=50,hb=277);
	}
	
	translate([0,340,-100])
	delle();
	
	rotate([0,0,60])
	translate([0,340,-100])
	delle();
	
	rotate([0,0,120])
	translate([0,340,-100])
	delle();
	
	rotate([0,0,180])
	translate([0,340,-100])
	delle();
	
	rotate([0,0,240])
	translate([0,340,-100])
	delle();
	
	rotate([0,0,300])
	translate([0,340,-100])
	delle();
	
}
	
