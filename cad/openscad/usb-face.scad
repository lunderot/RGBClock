$fn = 50;

bottom = 5;
top = 3;


difference()
{
	union()
	{
		translate([0,0,bottom])
		linear_extrude(top)
		hull()
		{
			circle(r=6);
			translate([8, 0, 0])
			circle(r=6);
		}
		linear_extrude(bottom)
		translate([4, 0])
		square([34, 14], center=true);
	}

	linear_extrude(bottom+top+1)
	translate([4, 0])
	scale(1.01)
	square([12, 11], center=true);

	
	translate([4, 0, bottom])
	linear_extrude(top)
	scale(1.01)
	square([12, 13], center=true);
}


