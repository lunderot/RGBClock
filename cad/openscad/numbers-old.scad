
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


path337_0_points = [[-189.393000,0.000000],[-182.378000,-7.015000],[-133.276000,-7.015000],[-126.261000,0.000000],[-133.276000,7.015000],[-182.379000,7.015000],[-189.393000,0.000000],[-189.393000,0.000000]];

module poly_path337(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path337_0_points);
  }
}

path281_0_points = [[-192.901000,3.507000],[-185.886000,10.522000],[-185.886000,59.624000],[-192.901000,66.639000],[-199.916000,59.624000],[-199.916000,10.522000],[-192.901000,3.507000],[-192.901000,3.507000]];

module poly_path281(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path281_0_points);
  }
}

path339_0_points = [[-192.901000,3.507000],[-185.886000,10.522000],[-185.886000,59.624000],[-192.901000,66.639000],[-199.916000,59.624000],[-199.916000,10.522000],[-192.901000,3.507000],[-192.901000,3.507000]];

module poly_path339(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path339_0_points);
  }
}

path283_0_points = [[-122.755000,3.507000],[-115.740000,10.522000],[-115.740000,59.624000],[-122.755000,66.639000],[-129.770000,59.624000],[-129.770000,10.522000],[-122.755000,3.507000],[-122.755000,3.507000]];

module poly_path283(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path283_0_points);
  }
}

path341_0_points = [[-122.755000,3.507000],[-115.740000,10.522000],[-115.740000,59.624000],[-122.755000,66.639000],[-129.770000,59.624000],[-129.770000,10.522000],[-122.755000,3.507000],[-122.755000,3.507000]];

module poly_path341(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path341_0_points);
  }
}

path285_0_points = [[-189.393000,70.146000],[-182.378000,63.131000],[-133.276000,63.131000],[-126.261000,70.146000],[-133.276000,77.161000],[-182.379000,77.161000],[-189.393000,70.146000],[-189.393000,70.146000]];

module poly_path285(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path285_0_points);
  }
}

path343_0_points = [[-189.393000,70.146000],[-182.378000,63.131000],[-133.276000,63.131000],[-126.261000,70.146000],[-133.276000,77.161000],[-182.379000,77.161000],[-189.393000,70.146000],[-189.393000,70.146000]];

module poly_path343(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path343_0_points);
  }
}

path287_0_points = [[-91.189000,-70.146000],[-84.174000,-77.161000],[-35.072000,-77.161000],[-28.057000,-70.146000],[-35.072000,-63.131000],[-84.174000,-63.131000],[-91.189000,-70.146000],[-91.189000,-70.146000]];

module poly_path287(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path287_0_points);
  }
}

path345_0_points = [[-91.189000,-70.146000],[-84.174000,-77.161000],[-35.072000,-77.161000],[-28.057000,-70.146000],[-35.072000,-63.131000],[-84.174000,-63.131000],[-91.189000,-70.146000],[-91.189000,-70.146000]];

module poly_path345(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path345_0_points);
  }
}

path289_0_points = [[-94.697000,-66.639000],[-87.682000,-59.624000],[-87.682000,-10.522000],[-94.697000,-3.507000],[-101.712000,-10.522000],[-101.712000,-59.624000],[-94.697000,-66.639000],[-94.697000,-66.639000]];

module poly_path289(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path289_0_points);
  }
}

path347_0_points = [[-94.697000,-66.639000],[-87.682000,-59.624000],[-87.682000,-10.522000],[-94.697000,-3.507000],[-101.712000,-10.522000],[-101.712000,-59.624000],[-94.697000,-66.639000],[-94.697000,-66.639000]];

module poly_path347(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path347_0_points);
  }
}

path291_0_points = [[-24.551000,-66.639000],[-17.536000,-59.624000],[-17.536000,-10.522000],[-24.551000,-3.507000],[-31.566000,-10.522000],[-31.566000,-59.624000],[-24.551000,-66.639000],[-24.551000,-66.639000]];

module poly_path291(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path291_0_points);
  }
}

path349_0_points = [[-24.551000,-66.639000],[-17.536000,-59.624000],[-17.536000,-10.522000],[-24.551000,-3.507000],[-31.566000,-10.522000],[-31.566000,-59.624000],[-24.551000,-66.639000],[-24.551000,-66.639000]];

module poly_path349(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path349_0_points);
  }
}

path393_0_points = [[126.263000,70.146000],[133.278000,63.131000],[182.380000,63.131000],[189.395000,70.146000],[182.380000,77.161000],[133.278000,77.161000],[126.263000,70.146000],[126.263000,70.146000]];

module poly_path393(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path393_0_points);
  }
}

path293_0_points = [[-91.189000,0.000000],[-84.174000,-7.015000],[-35.072000,-7.015000],[-28.057000,0.000000],[-35.072000,7.015000],[-84.174000,7.015000],[-91.189000,0.000000],[-91.189000,0.000000]];

module poly_path293(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path293_0_points);
  }
}

path351_0_points = [[-91.189000,0.000000],[-84.174000,-7.015000],[-35.072000,-7.015000],[-28.057000,0.000000],[-35.072000,7.015000],[-84.174000,7.015000],[-91.189000,0.000000],[-91.189000,0.000000]];

module poly_path351(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path351_0_points);
  }
}

path295_0_points = [[-94.697000,3.507000],[-87.682000,10.522000],[-87.682000,59.624000],[-94.697000,66.639000],[-101.712000,59.624000],[-101.712000,10.522000],[-94.697000,3.507000],[-94.697000,3.507000]];

module poly_path295(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path295_0_points);
  }
}

path353_0_points = [[-94.697000,3.507000],[-87.682000,10.522000],[-87.682000,59.624000],[-94.697000,66.639000],[-101.712000,59.624000],[-101.712000,10.522000],[-94.697000,3.507000],[-94.697000,3.507000]];

module poly_path353(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path353_0_points);
  }
}

path297_0_points = [[-24.551000,3.507000],[-17.536000,10.522000],[-17.536000,59.624000],[-24.551000,66.639000],[-31.566000,59.624000],[-31.566000,10.522000],[-24.551000,3.507000],[-24.551000,3.507000]];

module poly_path297(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path297_0_points);
  }
}

path355_0_points = [[-24.551000,3.507000],[-17.536000,10.522000],[-17.536000,59.624000],[-24.551000,66.639000],[-31.566000,59.624000],[-31.566000,10.522000],[-24.551000,3.507000],[-24.551000,3.507000]];

module poly_path355(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path355_0_points);
  }
}

path299_0_points = [[-91.189000,70.146000],[-84.174000,63.131000],[-35.072000,63.131000],[-28.057000,70.146000],[-35.072000,77.161000],[-84.174000,77.161000],[-91.189000,70.146000],[-91.189000,70.146000]];

module poly_path299(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path299_0_points);
  }
}

path357_0_points = [[-91.189000,70.146000],[-84.174000,63.131000],[-35.072000,63.131000],[-28.057000,70.146000],[-35.072000,77.161000],[-84.174000,77.161000],[-91.189000,70.146000],[-91.189000,70.146000]];

module poly_path357(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path357_0_points);
  }
}

path301_0_points = [[28.058000,-70.146000],[35.073000,-77.161000],[84.175000,-77.161000],[91.190000,-70.146000],[84.175000,-63.131000],[35.073000,-63.131000],[28.058000,-70.146000],[28.058000,-70.146000]];

module poly_path301(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path301_0_points);
  }
}

path387_0_points = [[126.263000,0.000000],[133.278000,-7.015000],[182.380000,-7.015000],[189.395000,0.000000],[182.380000,7.015000],[133.278000,7.015000],[126.263000,0.000000],[126.263000,0.000000]];

module poly_path387(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path387_0_points);
  }
}

path359_0_points = [[6.856000,-35.073000],[6.311000,-32.377875],[4.824750,-30.177000],[2.620375,-28.693125],[-0.079000,-28.149000],[-2.778375,-28.693125],[-4.982750,-30.177000],[-6.469000,-32.377875],[-7.014000,-35.073000],[-6.469000,-37.768125],[-4.982750,-39.969000],[-2.778375,-41.452875],[-0.079000,-41.997000],[2.620375,-41.452875],[4.824750,-39.969000],[6.311000,-37.768125],[6.856000,-35.073000],[6.856000,-35.073000]];

module poly_path359(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path359_0_points);
  }
}

path303_0_points = [[24.551000,-66.639000],[31.566000,-59.624000],[31.566000,-10.522000],[24.551000,-3.507000],[17.536000,-10.522000],[17.536000,-59.624000],[24.551000,-66.639000],[24.551000,-66.639000]];

module poly_path303(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path303_0_points);
  }
}

path361_0_points = [[6.856000,35.072000],[6.311000,37.767125],[4.824750,39.968000],[2.620375,41.451875],[-0.079000,41.996000],[-2.778375,41.451875],[-4.982750,39.968000],[-6.469000,37.767125],[-7.014000,35.072000],[-6.469000,32.376875],[-4.982750,30.176000],[-2.778375,28.692125],[-0.079000,28.148000],[2.620375,28.692125],[4.824750,30.176000],[6.311000,32.376875],[6.856000,35.072000],[6.856000,35.072000]];

module poly_path361(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path361_0_points);
  }
}

path305_0_points = [[94.697000,-66.639000],[101.712000,-59.624000],[101.712000,-10.522000],[94.697000,-3.507000],[87.682000,-10.522000],[87.682000,-59.624000],[94.697000,-66.639000],[94.697000,-66.639000]];

module poly_path305(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path305_0_points);
  }
}

path363_0_points = [[6.856000,-35.073000],[6.311000,-32.377875],[4.824750,-30.177000],[2.620375,-28.693125],[-0.079000,-28.149000],[-2.778375,-28.693125],[-4.982750,-30.177000],[-6.469000,-32.377875],[-7.014000,-35.073000],[-6.469000,-37.768125],[-4.982750,-39.969000],[-2.778375,-41.452875],[-0.079000,-41.997000],[2.620375,-41.452875],[4.824750,-39.969000],[6.311000,-37.768125],[6.856000,-35.073000],[6.856000,-35.073000]];

module poly_path363(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path363_0_points);
  }
}

path307_0_points = [[28.058000,0.000000],[35.073000,-7.015000],[84.175000,-7.015000],[91.190000,0.000000],[84.175000,7.015000],[35.073000,7.015000],[28.058000,0.000000],[28.058000,0.000000]];

module poly_path307(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path307_0_points);
  }
}

path365_0_points = [[6.856000,35.072000],[6.311000,37.767125],[4.824750,39.968000],[2.620375,41.451875],[-0.079000,41.996000],[-2.778375,41.451875],[-4.982750,39.968000],[-6.469000,37.767125],[-7.014000,35.072000],[-6.469000,32.376875],[-4.982750,30.176000],[-2.778375,28.692125],[-0.079000,28.148000],[2.620375,28.692125],[4.824750,30.176000],[6.311000,32.376875],[6.856000,35.072000],[6.856000,35.072000]];

module poly_path365(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path365_0_points);
  }
}

path309_0_points = [[24.551000,3.507000],[31.566000,10.522000],[31.566000,59.624000],[24.551000,66.639000],[17.536000,59.624000],[17.536000,10.522000],[24.551000,3.507000],[24.551000,3.507000]];

module poly_path309(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path309_0_points);
  }
}

path367_0_points = [[28.058000,-70.146000],[35.073000,-77.161000],[84.175000,-77.161000],[91.190000,-70.146000],[84.175000,-63.131000],[35.073000,-63.131000],[28.058000,-70.146000],[28.058000,-70.146000]];

module poly_path367(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path367_0_points);
  }
}

path311_0_points = [[94.697000,3.507000],[101.712000,10.522000],[101.712000,59.624000],[94.697000,66.639000],[87.682000,59.624000],[87.682000,10.522000],[94.697000,3.507000],[94.697000,3.507000]];

module poly_path311(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path311_0_points);
  }
}

path369_0_points = [[24.551000,-66.639000],[31.566000,-59.624000],[31.566000,-10.522000],[24.551000,-3.507000],[17.536000,-10.522000],[17.536000,-59.624000],[24.551000,-66.639000],[24.551000,-66.639000]];

module poly_path369(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path369_0_points);
  }
}

path313_0_points = [[28.058000,70.146000],[35.073000,63.131000],[84.175000,63.131000],[91.190000,70.146000],[84.175000,77.161000],[35.073000,77.161000],[28.058000,70.146000],[28.058000,70.146000]];

module poly_path313(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path313_0_points);
  }
}

path371_0_points = [[94.697000,-66.639000],[101.712000,-59.624000],[101.712000,-10.522000],[94.697000,-3.507000],[87.682000,-10.522000],[87.682000,-59.624000],[94.697000,-66.639000],[94.697000,-66.639000]];

module poly_path371(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path371_0_points);
  }
}

path315_0_points = [[126.263000,-70.146000],[133.278000,-77.161000],[182.380000,-77.161000],[189.395000,-70.146000],[182.380000,-63.131000],[133.278000,-63.131000],[126.263000,-70.146000],[126.263000,-70.146000]];

module poly_path315(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path315_0_points);
  }
}

path373_0_points = [[28.058000,0.000000],[35.073000,-7.015000],[84.175000,-7.015000],[91.190000,0.000000],[84.175000,7.015000],[35.073000,7.015000],[28.058000,0.000000],[28.058000,0.000000]];

module poly_path373(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path373_0_points);
  }
}

path317_0_points = [[122.755000,-66.639000],[129.770000,-59.624000],[129.770000,-10.522000],[122.755000,-3.507000],[115.740000,-10.522000],[115.740000,-59.624000],[122.755000,-66.639000],[122.755000,-66.639000]];

module poly_path317(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path317_0_points);
  }
}

path375_0_points = [[24.551000,3.507000],[31.566000,10.522000],[31.566000,59.624000],[24.551000,66.639000],[17.536000,59.624000],[17.536000,10.522000],[24.551000,3.507000],[24.551000,3.507000]];

module poly_path375(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path375_0_points);
  }
}

path319_0_points = [[192.901000,-66.639000],[199.916000,-59.624000],[199.916000,-10.522000],[192.901000,-3.507000],[185.886000,-10.522000],[185.886000,-59.624000],[192.901000,-66.639000],[192.901000,-66.639000]];

module poly_path319(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path319_0_points);
  }
}

path377_0_points = [[94.697000,3.507000],[101.712000,10.522000],[101.712000,59.624000],[94.697000,66.639000],[87.682000,59.624000],[87.682000,10.522000],[94.697000,3.507000],[94.697000,3.507000]];

module poly_path377(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path377_0_points);
  }
}

path321_0_points = [[126.263000,0.000000],[133.278000,-7.015000],[182.380000,-7.015000],[189.395000,0.000000],[182.380000,7.015000],[133.278000,7.015000],[126.263000,0.000000],[126.263000,0.000000]];

module poly_path321(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path321_0_points);
  }
}

path379_0_points = [[28.058000,70.146000],[35.073000,63.131000],[84.175000,63.131000],[91.190000,70.146000],[84.175000,77.161000],[35.073000,77.161000],[28.058000,70.146000],[28.058000,70.146000]];

module poly_path379(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path379_0_points);
  }
}

path323_0_points = [[122.755000,3.507000],[129.770000,10.522000],[129.770000,59.624000],[122.755000,66.639000],[115.740000,59.624000],[115.740000,10.522000],[122.755000,3.507000],[122.755000,3.507000]];

module poly_path323(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path323_0_points);
  }
}

path381_0_points = [[126.263000,-70.146000],[133.278000,-77.161000],[182.380000,-77.161000],[189.395000,-70.146000],[182.380000,-63.131000],[133.278000,-63.131000],[126.263000,-70.146000],[126.263000,-70.146000]];

module poly_path381(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path381_0_points);
  }
}

path325_0_points = [[192.901000,3.507000],[199.916000,10.522000],[199.916000,59.624000],[192.901000,66.639000],[185.886000,59.624000],[185.886000,10.522000],[192.901000,3.507000],[192.901000,3.507000]];

module poly_path325(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path325_0_points);
  }
}

path391_0_points = [[192.901000,3.507000],[199.916000,10.522000],[199.916000,59.624000],[192.901000,66.639000],[185.886000,59.624000],[185.886000,10.522000],[192.901000,3.507000],[192.901000,3.507000]];

module poly_path391(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path391_0_points);
  }
}

path383_0_points = [[122.755000,-66.639000],[129.770000,-59.624000],[129.770000,-10.522000],[122.755000,-3.507000],[115.740000,-10.522000],[115.740000,-59.624000],[122.755000,-66.639000],[122.755000,-66.639000]];

module poly_path383(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path383_0_points);
  }
}

path327_0_points = [[126.263000,70.146000],[133.278000,63.131000],[182.380000,63.131000],[189.395000,70.146000],[182.380000,77.161000],[133.278000,77.161000],[126.263000,70.146000],[126.263000,70.146000]];

module poly_path327(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path327_0_points);
  }
}

path389_0_points = [[122.755000,3.507000],[129.770000,10.522000],[129.770000,59.624000],[122.755000,66.639000],[115.740000,59.624000],[115.740000,10.522000],[122.755000,3.507000],[122.755000,3.507000]];

module poly_path389(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path389_0_points);
  }
}

path273_0_points = [[-189.393000,-70.146000],[-182.378000,-77.161000],[-133.276000,-77.161000],[-126.261000,-70.146000],[-133.276000,-63.131000],[-182.379000,-63.131000],[-189.393000,-70.146000],[-189.393000,-70.146000]];

module poly_path273(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path273_0_points);
  }
}

path275_0_points = [[-192.901000,-66.639000],[-185.886000,-59.624000],[-185.886000,-10.522000],[-192.901000,-3.507000],[-199.916000,-10.522000],[-199.916000,-59.624000],[-192.901000,-66.639000],[-192.901000,-66.639000]];

module poly_path275(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path275_0_points);
  }
}

path331_0_points = [[-189.393000,-70.146000],[-182.378000,-77.161000],[-133.276000,-77.161000],[-126.261000,-70.146000],[-133.276000,-63.131000],[-182.379000,-63.131000],[-189.393000,-70.146000],[-189.393000,-70.146000]];

module poly_path331(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path331_0_points);
  }
}

path277_0_points = [[-122.755000,-66.639000],[-115.740000,-59.624000],[-115.740000,-10.522000],[-122.755000,-3.507000],[-129.770000,-10.522000],[-129.770000,-59.624000],[-122.755000,-66.639000],[-122.755000,-66.639000]];

module poly_path277(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path277_0_points);
  }
}

path333_0_points = [[-192.901000,-66.639000],[-185.886000,-59.624000],[-185.886000,-10.522000],[-192.901000,-3.507000],[-199.916000,-10.522000],[-199.916000,-59.624000],[-192.901000,-66.639000],[-192.901000,-66.639000]];

module poly_path333(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path333_0_points);
  }
}

path385_0_points = [[192.901000,-66.639000],[199.916000,-59.624000],[199.916000,-10.522000],[192.901000,-3.507000],[185.886000,-10.522000],[185.886000,-59.624000],[192.901000,-66.639000],[192.901000,-66.639000]];

module poly_path385(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path385_0_points);
  }
}

path279_0_points = [[-189.393000,0.000000],[-182.378000,-7.015000],[-133.276000,-7.015000],[-126.261000,0.000000],[-133.276000,7.015000],[-182.379000,7.015000],[-189.393000,0.000000],[-189.393000,0.000000]];

module poly_path279(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path279_0_points);
  }
}

path335_0_points = [[-122.755000,-66.639000],[-115.740000,-59.624000],[-115.740000,-10.522000],[-122.755000,-3.507000],[-129.770000,-10.522000],[-129.770000,-59.624000],[-122.755000,-66.639000],[-122.755000,-66.639000]];

module poly_path335(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    
      polygon(path335_0_points);
  }
}

module all_numbers(h=0, w=1, res=4) {
	union()  {
		poly_path337(h, w);
		poly_path281(h, w);
		poly_path339(h, w);
		poly_path283(h, w);
		poly_path341(h, w);
		poly_path285(h, w);
		poly_path343(h, w);
		poly_path287(h, w);
		poly_path345(h, w);
		poly_path289(h, w);
		poly_path347(h, w);
		poly_path291(h, w);
		poly_path349(h, w);
		poly_path393(h, w);
		poly_path293(h, w);
		poly_path351(h, w);
		poly_path295(h, w);
		poly_path353(h, w);
		poly_path297(h, w);
		poly_path355(h, w);
		poly_path299(h, w);
		poly_path357(h, w);
		poly_path301(h, w);
		poly_path387(h, w);
		poly_path359(h, w);
		poly_path303(h, w);
		poly_path361(h, w);
		poly_path305(h, w);
		poly_path363(h, w);
		poly_path307(h, w);
		poly_path365(h, w);
		poly_path309(h, w);
		poly_path367(h, w);
		poly_path311(h, w);
		poly_path369(h, w);
		poly_path313(h, w);
		poly_path371(h, w);
		poly_path315(h, w);
		poly_path373(h, w);
		poly_path317(h, w);
		poly_path375(h, w);
		poly_path319(h, w);
		poly_path377(h, w);
		poly_path321(h, w);
		poly_path379(h, w);
		poly_path323(h, w);
		poly_path381(h, w);
		poly_path325(h, w);
		poly_path391(h, w);
		poly_path383(h, w);
		poly_path327(h, w);
		poly_path389(h, w);
		poly_path273(h, w);
		poly_path275(h, w);
		poly_path331(h, w);
		poly_path277(h, w);
		poly_path333(h, w);
		poly_path385(h, w);
		poly_path279(h, w);
		poly_path335(h, w);
	}

}

// The shapes
poly_path337(height, width);
poly_path281(height, width);
poly_path339(height, width);
poly_path283(height, width);
poly_path341(height, width);
poly_path285(height, width);
poly_path343(height, width);
poly_path287(height, width);
poly_path345(height, width);
poly_path289(height, width);
poly_path347(height, width);
poly_path291(height, width);
poly_path349(height, width);
poly_path393(height, width);
poly_path293(height, width);
poly_path351(height, width);
poly_path295(height, width);
poly_path353(height, width);
poly_path297(height, width);
poly_path355(height, width);
poly_path299(height, width);
poly_path357(height, width);
poly_path301(height, width);
poly_path387(height, width);
poly_path359(height, width);
poly_path303(height, width);
poly_path361(height, width);
poly_path305(height, width);
poly_path363(height, width);
poly_path307(height, width);
poly_path365(height, width);
poly_path309(height, width);
poly_path367(height, width);
poly_path311(height, width);
poly_path369(height, width);
poly_path313(height, width);
poly_path371(height, width);
poly_path315(height, width);
poly_path373(height, width);
poly_path317(height, width);
poly_path375(height, width);
poly_path319(height, width);
poly_path377(height, width);
poly_path321(height, width);
poly_path379(height, width);
poly_path323(height, width);
poly_path381(height, width);
poly_path325(height, width);
poly_path391(height, width);
poly_path383(height, width);
poly_path327(height, width);
poly_path389(height, width);
poly_path273(height, width);
poly_path275(height, width);
poly_path331(height, width);
poly_path277(height, width);
poly_path333(height, width);
poly_path385(height, width);
poly_path279(height, width);
poly_path335(height, width);
