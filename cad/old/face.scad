use <numbers-old.scad>
use <rounded-corners-old.scad>

//square([151, 91], center=true);

scale(1.25)
{
	translate([0, 0, 2])
	{
		linear_extrude(10)
		{
			difference()
			{
				minkowski()
				{
					circle(2.1);
					all_numbers();
				}
				minkowski()
				{
					circle(0.2);
					all_numbers();
				}
			}
		}
	}

	////Front plate with holes
	//linear_extrude(2)
	//difference()
	//{
	//	rounded_corners();
	//	all_numbers();
	//}
}