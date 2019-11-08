library(sf)
library(raster)
library(gdalUtils)



library(gdalUtils)
src_dataset <- "C:/Users/hgriesba/Desktop/bluedotmapper/inst/DEM.tif"
gdal_translate(src_dataset,"C:/Users/hgriesba/Desktop/bluedotmapper/inst/DEM3.tif",of="GTiff",co="TILED=YES",verbose=TRUE)

