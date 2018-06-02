
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


path29_0_points = [[214.015500,115.256000],[213.752625,118.020959],[212.998687,120.596297],[211.805719,122.926830],[210.225750,124.957375],[208.310812,126.632748],[206.112938,127.897766],[203.684156,128.697244],[201.076500,128.976000],[-201.076500,128.976000],[-203.684156,128.697244],[-206.112938,127.897766],[-208.310813,126.632748],[-210.225750,124.957375],[-211.805719,122.926830],[-212.998688,120.596297],[-213.752625,118.020959],[-214.015500,115.256000],[-214.015500,-115.256000],[-213.752625,-118.020959],[-212.998688,-120.596297],[-211.805719,-122.926830],[-210.225750,-124.957375],[-208.310813,-126.632748],[-206.112938,-127.897766],[-203.684156,-128.697244],[-201.076500,-128.976000],[201.076500,-128.976000],[203.684156,-128.697244],[206.112938,-127.897766],[208.310812,-126.632748],[210.225750,-124.957375],[211.805719,-122.926830],[212.998687,-120.596297],[213.752625,-118.020959],[214.015500,-115.256000],[214.015500,115.256000],[214.015500,115.256000]];

module rounded_corners(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
      polygon(path29_0_points);
  }
}

// The shapes
rounded_corners(height, width);
