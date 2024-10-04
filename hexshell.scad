use <hex.scad>;
difference () {
	
translate ([0,0,-150])
rotate([0,180,0])
difference () {
hexbody(rb=400,rsp=20,re=50,hb=300);
	translate([0,0,-10])
	hexbody(rb=390,rsp=20,re=50,hb=300);
}

translate ([0,0,-100])
	rotate([90,0,0])
	cylinder(r=50,h=800,center=true);
	translate ([0,0,-100])
		rotate([90,0,60])
		cylinder(r=50,h=800,center=true);
	translate ([0,0,-100])
		rotate([90,0,120])
		cylinder(r=50,h=800,center=true);
}