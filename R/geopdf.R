#' Convert raster file to geopdf
#'
#' @param src input raster file
#' @param outfile output pdf file
#' @param verbose should the function be chatty? (default `TRUE`)
#'
#' @return the path name of the output file
#' @export
#'
#' @examples
#' file <- system.file("DEM.tif", package = "bluedotmapper")
#' geopdf(file, "file2.pdf")
#'
geopdf <- function(src, outfile, verbose = TRUE) {
  gdalUtils::gdal_translate(src_dataset = src,
                            dst_dataset = outfile,
                            of = "PDF",
                            co = "TILED=YES",
                            verbose = verbose)
  outfile
}
