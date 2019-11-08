library(sf)
library(raster)

# doesn't work
dem <- raster("inst/DEM.tif")
gdal_utils("info", dem)

#works
gdal_utils("info", "inst/DEM.tif")

opts <- c("DPI=300")

gdal_utils("translate", "inst/DEM.tif", "inst/dem.pdf",
           options = opts)

