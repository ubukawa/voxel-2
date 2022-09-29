mkdir mbtiles/19
for f in tile/*.laz; do Z=19 BASENAME=`basename ${f} .laz` ruby 2.rb | pdal pipeline --stdin | Z=19 ruby 3.rb | tippecanoe --maximum-zoom=19 --minimum-zoom=19 --projection=EPSG:3857 --force --output mbtiles/19/`basename ${f} .laz`.mbtiles --no-tile-size-limit --no-feature-limit; done
mkdir mbtiles/18
for f in tile/*.laz; do Z=18 BASENAME=`basename ${f} .laz` ruby 2.rb | pdal pipeline --stdin | Z=18 ruby 3.rb | tippecanoe --maximum-zoom=18 --minimum-zoom=18 --projection=EPSG:3857 --force --output mbtiles/18/`basename ${f} .laz`.mbtiles --no-tile-size-limit --no-feature-limit; done
mkdir mbtiles/17
for f in tile/*.laz; do Z=17 BASENAME=`basename ${f} .laz` ruby 2.rb | pdal pipeline --stdin | Z=17 ruby 3.rb | tippecanoe --maximum-zoom=17 --minimum-zoom=17 --projection=EPSG:3857 --force --output mbtiles/17/`basename ${f} .laz`.mbtiles --no-tile-size-limit --no-feature-limit; done
mkdir mbtiles/16
for f in tile/*.laz; do Z=16 BASENAME=`basename ${f} .laz` ruby 2.rb | pdal pipeline --stdin | Z=16 ruby 3.rb | tippecanoe --maximum-zoom=16 --minimum-zoom=16 --projection=EPSG:3857 --force --output mbtiles/16/`basename ${f} .laz`.mbtiles --no-tile-size-limit --no-feature-limit; done
mkdir mbtiles/15
for f in tile/*.laz; do Z=15 BASENAME=`basename ${f} .laz` ruby 2.rb | pdal pipeline --stdin | Z=15 ruby 3.rb | tippecanoe --maximum-zoom=15 --minimum-zoom=15 --projection=EPSG:3857 --force --output mbtiles/15/`basename ${f} .laz`.mbtiles --no-tile-size-limit --no-feature-limit; done
