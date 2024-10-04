module edges (rs) {
	union () {
		difference () {
		
			sphere(r=rs);
		
			translate ([0,0,-(rs/2)])
			cylinder(r=rs+0.01,h=rs,center=true);
		}
		translate([0,0,-rs/2])
		cylinder(r=rs,h=rs,center=true);
	}
}

module hexedges (hh,rm,rt,rb,rs) {
	minkowski () {
	
		union () {
			rotate ([0,0,30])
			cylinder(r1=rm,r2=rt,h=hh,$fn=6);

			rotate ([0,0,30])
			translate ([0,0,-(hh)])
			cylinder(r1=rb,r2=rm,h=hh,$fn=6);
		}
		edges(rs);
	}
}

module hexbody (rb,rsp,re,hb) {

minkowski() {
cylinder(r=rb-(rsp)-(re), h=hb-(2*rsp)-2*re,$fn=6,center=true);
hexedges(hh=re,rt=0,rb=re,rm=re,rs=rsp);
}
}
