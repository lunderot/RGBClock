module segment()
{
	minkowski()
	{
		polygon([[0,0],[4,4],[32,4],[36,0],[32,-4],[4,-4]]);
		circle(r=.5, $fn=100);
	}
}

module digit()
{
	list = [
		[0,0,0],
		[0,-40,0],
		[0,-80,0],
		[2,-2,-90],
		[42,-2,-90],
		[42,38,-90],
		[2,38,-90]
	];

	for (i=list)
	{
		rotate(i[2])
		translate([i[0], i[1]])
		segment();
	}
}

module display()
{
	list = [0,56,124,180];

	scale(.61864)
	translate([-108,40])
	union()
	{
		for (i=list)
		{
			translate([i, 0])
			digit();
		}

		translate([108,-20])
		circle(r=4);
		translate([108,-60])
		circle(r=4);
	}
}

module face()
{
	d = [151,91];
	radius = 5;
	hull()
	for(i=[[0,0], [0,1], [1,0], [1,1]])
		mirror([0,i[1]])
		mirror([i[0],0])
		translate([d[0]/2-radius,d[1]/2-radius])
		circle(r=radius,$fn=100);
}

$fn = 100;

translate([0, 0, 2])
linear_extrude(10)
difference()
{
	minkowski()
	{
		hull()
		display();
		square(size=[5, 5], center=true);
	}
	display();
}


linear_extrude(2)
difference()
{
	face();
	display();
}

