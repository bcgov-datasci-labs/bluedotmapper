library(sf)
library(raster)

# doesn't work
dem <- raster("inst/DEM.tif")
gdal_utils("info", dem)

#works
gdal_utils("info", "inst/DEM.tif")

unlink("inst/dem.pdf")
opts <- c("-of", "PDF", "-a_srs", "EPSG:3005", "-co", "DPI=300")

gdal_utils("translate", "inst/DEM.tif", "inst/dem.pdf", options = opts)

gdal_utils("info", "inst/dem.pdf")

system("gdal_translate ")

st_write(dem, "foo.pdf")

raster("inst/dem.pdf")


