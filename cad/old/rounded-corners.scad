
// Module names are of the form poly_<inkscape-path-id>().
// As a result you can associate a polygon in this OpenSCAD program with the
//  corresponding SVG element in the Inkscape document by looking for 
//  the XML element with the attribute id="inkscape-path-id".

// Paths have their own variables so they can be imported and used 
//  in polygon(points) structures in other programs.
// The NN_points is the list of all polygon XY vertices. 
// There may be an NN_paths variable as well. If it exists then it 
//  defines the nested paths. Both must be used in the 
//  polygon(points, paths) variant of the command.

profile_scale = 25.4/90; //made in inkscape in mm

// helper functions to determine the X,Y dimensions of the profiles
function min_x(shape_points) = min([ for (x = shape_points) min(x[0])]);
function max_x(shape_points) = max([ for (x = shape_points) max(x[0])]);
function min_y(shape_points) = min([ for (x = shape_points) min(x[1])]);
function max_y(shape_points) = max([ for (x = shape_points) max(x[1])]);

height = 5;
width = 1.0;


path20_0_points = [[275.920015,161.280000],[275.702202,163.440313],[275.077515,165.452500],[274.089077,167.273438],[272.780015,168.860000],[271.193452,170.169062],[269.372515,171.157500],[267.360328,171.782188],[265.200015,172.000000],[-265.199985,172.000000],[-267.360293,171.782188],[-269.372481,171.157500],[-271.193423,170.169062],[-272.779993,168.860000],[-274.089063,167.273438],[-275.077508,165.452500],[-275.702200,163.440313],[-275.920015,161.280000],[-275.920015,-161.280000],[-275.702200,-163.440315],[-275.077508,-165.452504],[-274.089063,-167.273442],[-272.779993,-168.860004],[-271.193423,-170.169065],[-269.372481,-171.157501],[-267.360293,-171.782188],[-265.199985,-172.000000],[265.200015,-172.000000],[267.360327,-171.782188],[269.372515,-171.157501],[271.193452,-170.169065],[272.780015,-168.860004],[274.089077,-167.273442],[275.077515,-165.452504],[275.702202,-163.440315],[275.920015,-161.280000],[275.920015,161.280000]];

module rounded_corners(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
      polygon(path20_0_points);
  }
}

// The shapes
rounded_corners(height, width);
